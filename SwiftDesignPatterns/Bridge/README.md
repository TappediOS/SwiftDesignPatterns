#  Bridge


#### このパターンは？

抽象概念を実装から切り離し，一方が変更されてももう一方を変更せずに済む様にするパターン。
`クラス階層の爆発`と呼ばれる問題を解決する。


#### 視点👀

サンプルプログラムは少し複雑であるが，抽象概念を切り離せばそれでいいのではないか。
`VIPER`における`presenter`の様に考えればいい


```Swift:hoge.swift

protocol: HogePresenterProtocol { }

final class HogePresenter {
    private weak var view: HogeListPresenterOutput!
    private let router: HogeRouterProtocol
    private let hogeInteractor: HogeUsecaseProtocol
    
    init(view: HogeListPresenterOutput, router: HogeRouterProtocol, interactor: HogeUsecaseProtocol) { // 省略}
}

extention HogePresenter: HogePresenterProtocol { 
    func didTapHogeButton() {
        self?.view?.showHoge()
    }
}

```

上記の様なコードがあった場合，`viewController`と`Interactor`の橋渡しを`Bridge`が賄っていることになる。
`init()`に入れる引数をUnitTest時にMockに差し替えることでテストが容易になる
