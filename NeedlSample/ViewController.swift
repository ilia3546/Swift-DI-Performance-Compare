import UIKit
import Components
import NeedleFoundation

class ViewController: UIViewController {

    lazy var button = UIButton(primaryAction: UIAction(title: "Open second", handler: { _ in
        self.openSecondController()
    }))

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    let rootComponent = RootComponent()

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(button)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.sizeToFit()
        button.center = view.center
    }

    private func openSecondController() {
        var times: [TimeInterval] = []
        for _ in 0 ..< 1000 {
            let startTime = CFAbsoluteTimeGetCurrent()
            _ = rootComponent.appComponent.class50
            let endTime = CFAbsoluteTimeGetCurrent()
            times.append(Double(endTime - startTime))
        }

        let amount = times.reduce(into: 0, { $0 += $1 })
        let avg = amount / Double(times.count)
        let first = times.first!
        let result = """
        Needle

        amount: \(formatTimeInterval(amount)) ms,
        avg: \(formatTimeInterval(avg)) ms,
        first: \(formatTimeInterval(first)) ms,
        """
        print(result)
        let vc2 = ResultViewController(result: result)
        present(vc2, animated: true)
    }
}
