#  Template Method

### このパターンは？

アルゴリズムの特定のステップをサードパーティによって提供される実装に置き換えることができるパターン
クロージャかサブクラスを作成する

### メリットは

フレームワークのみを作成して他の開発者がそれを使える様になる


### 視点

VCにおける
`override func viewDidLoad() { }`
とうもこのパターンである。
りんごちゃんが作ったものを開発者が好きに中身を実装できている


ちなみに，Cell中に存在するボタンがタップされたときのイベントを考える。

```Swift:hogeCell.swift
import UIKit

class HogeCell: UICollectionViewCell {
    var buttonAction: (() -> Void)?
    
    override func awakeFromNib() { }
    
    @IBAction func tapRadioButton(_ sender: Any) {
        self.buttonAction?()
    }
}
```

ボタンがタップされた時には`self.buttonAction?()`が呼び出されるがそれ自体はクロージャになっている。
タップイベントをVC側で処理をするために，VC側では以下の様にコードを記載する


```Swift:hogeVC.swift
import UIKit

class HogeViewController: UIViewController {
    var hogeCollectionView = UICollectionView()

    override func viewDidLoad() { 
        supter.viewDidLoad()
        hogeCollectionView.delegate = self
        //以下略
    }
    
    func tapCell(index: Int) {
        print("Tapped cell!")
    }
}

extension HogeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = HogeCell()
        
        //MARK:- ここでアクションの処理が書かれている
        cell.buttonAction = { [weak self] in
            guard let self = self else { return }
            self.tapCell(index: Int)
        }   
    
        return cell
    }
}
```

cellを生成した際にcellに対して`buttonAction`の実際の処理を書いてあげている。
`HogeCell.swift`内に処理を書いた場合は`tapCell()`が呼び出せないが上記の様にすることで
VC内の関数を呼び出せている。
(多分これもTemplate Methodであると思うけど，実際にそうかはわからない)
