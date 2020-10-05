#  Singleton


### このパターンは何か？

特定の型オブジェクトを1つだけ存在させるパターン

### メリットは何か

リソース管理，共有リソースをカプセル化に使用できる。


### 作り方

```Swift:hoge.swift
final class Hoge {
    static let shared = Hoge()
    private var data:[String] = Array()
    
    private init() { }
    
    func log(msg: String) {
        self.data.append(msg)
    }
    
    func printLog() -> [String] {
        return self.data
    }
}
```

上記の様に作成する。ポイントは3つ
1. `class`に`final`を付与する
2. `static let shared = Hoge()`としてshareするオブジェクトを生成する
3. `private init() { }`を追加し外部からの初期化を防ぐ


## 並列性への対処

### 対処しない場合の問題点

上記のコードを見れば分かる様に，`func log()`を呼び出すことにより`data`に`append`していることがわかる。
並列に対応しなければ，複数の場所から同時に呼ばれた時にデータの整合性が保たれなくなる。
Swiftの配列はスレッドセーフでないからね。

### GCD (grand central dispatch)の使用

`private let queue = DispathchQueue(label: "hoge")`
を追加する。そして，呼び出しの際に書き込みが並列に行われない様にする。

```Swift:hoge.swift
final class Hoge {
    static let shared = Hoge()
    private let queue = DispathchQueue(label: "hoge")
    private var data:[String] = Array()
    
    private init() { }
    
    func log(msg: String) {
        self.queue.aync {
            self.data.append(msg)
        }
    }
    
    func printLog() -> [String] {
        return self.data
    }
}
```
辞書型を用いている場合は読み込みに対しても処理する必要がある
ただし，読み込みのみが並列して行うことは特に問題ではないことに注意が必要。
書き込みが絡んでくる際に処理が必要である。


#### read/writeへの対処

`concurentQueue`を使用する
以下の様なコードになる。
読み込みの際は`self.queue.aync { }`を使う。`queue`生成時に`attributes: .concurrent`を設定したことによりこのブロック内は並列に行われる。
書き込みの際は`self.queue.async(flags: .barrier) { }` を使用する。`flags: .barrier`を設定しているので書き込みは他の処理後に行われる。

```Swift:hoge.swift

import Foundation

final class Hoge {
    static let shared = Hoge()
    private let queue = DispatchQueue(label: "hoge", attributes: .concurrent)
    private var data:[String] = Array()
    
    private init() { }
    
    func log(msg: String) {
        self.queue.async(flags: .barrier) {
            self.data.append(msg)
        }
    }
    
    func printLog() -> [String] {
        self.queue.aync {
            return self.data
        }
    }
}
```
