import UIKit

public final class ResultViewController: UIViewController {

    let label = UILabel()
    let result: String

    public init(result: String) {
        self.result = result
        super.init(nibName: nil, bundle: nil)
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        label.numberOfLines = 0
        label.textAlignment = .center
        view.backgroundColor = .white
        view.addSubview(label)
    }

    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        label.text = result
        label.sizeToFit()
        label.center = view.center
    }
}
