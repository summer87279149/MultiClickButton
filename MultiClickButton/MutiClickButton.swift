import UIKit
import RxSwift
import RxCocoa
class MutiClickButton: UIButton {
    let bag = DisposeBag()
    init(count:Int) {
        super.init(frame: .zero)
        backgroundColor = .blue
        
        let btnObservable = self.rx.tap
        btnObservable
            .startWith(Void())
            .debounce(.milliseconds(500), scheduler: MainScheduler.instance)
            .flatMapLatest{
                btnObservable.buffer(timeSpan: .never, count: count, scheduler: MainScheduler.instance)
            }
            .subscribe(onNext:{ _ in
                print("\(count)连击")
            })
            .disposed(by: bag)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
