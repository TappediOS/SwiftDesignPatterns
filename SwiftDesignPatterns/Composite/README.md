#  Composite


### どんなパターンか

個々のオブジェクトとオブジェクトのコレクションからなるツリーを一貫した方法で扱える様にするパターン。


#### 視点👀


ある`protocol`が存在する時，それ自体に準拠したクラスとそれに準拠した集合を持つクラス
があればこのパターンは成立する


```Swift:hoge.swift

protocol HogeProtocol {
    var name: String
    var price: Int
    
    func getPrice() -> Int 
}

class Single: HogeProtocol {
    var name: String
    var price: Int
    
    init() { }
    
    func getPrice() -> Int { return self.price }
}

class Set: HogeProtocol {
    var name: String
    var singles: [HogeProtocol]
    var price: Int {
        return set.map { $0.price }.reduce(0, +)
    }

    func getPrice() -> Int { return self.price }
}
```

このコードにより，`Single`自体の値段を知れるし，`Set`に存在する`singles`(ここでは`[Single]`のこと)の総額を得ることができる。
`var singles`の型`[HogeProtocol]`であることにより，`HogeProtocol`に準拠していれば`Single`以外も入れ得ることができる。
