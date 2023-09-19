import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var text1: UITextField!
    @IBOutlet weak private var text2: UITextField!

    @IBOutlet weak private var label: UILabel!

    @IBAction func calculate(_ sender: Any) {
        self.calculate()
    }

    func calculate() {
        guard let num1 = Float(text1.text ?? "") else {
            presentAlert(message: "割られる数を入力して下さい")
            return
        }

        guard let num2 = Float(text2.text ?? "") else {
            presentAlert(message: "割る数を入力して下さい")
            return
        }

        guard num2 != 0 else {
            presentAlert(message: "割る数に0を入力しないで下さい")
            return
        }

        label.text = "\(num1 / num2)"
    }

    private func presentAlert(message: String) {
        let alert = UIAlertController(title: "課題５", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
