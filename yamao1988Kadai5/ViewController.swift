import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var text1: UITextField!
    @IBOutlet weak private var text2: UITextField!
    
    @IBOutlet weak var label: UILabel!

    @IBAction func calculate(_ sender: Any) {
        self.calculate()
    }
    
    func calculate() {
        let num1 = ((text1.text ?? "") as NSString).floatValue
        let num2 = ((text2.text ?? "") as NSString).floatValue
        
        if text1.text?.isEmpty ?? true {
            // アラート作成
            let title = "課題５"
            let message = "割られる数を入力して下さい"
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            // OKボタンを作成＆追加
            let ok = UIAlertAction(title: "OK", style: .default, handler:nil)
            alert.addAction(ok)
            
            // アラートを表示
            present(alert, animated: true, completion: nil)
        }
        if text2.text?.isEmpty ?? true {
            // アラート作成
            let title = "課題５"
            let message = "割る数を入力して下さい"
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            // OKボタンを作成＆追加
            let ok = UIAlertAction(title: "OK", style: .default, handler:nil)
            alert.addAction(ok)
            
            // アラートを表示
            present(alert, animated: true, completion: nil)
            
        } else if num2 == 0 {
            // アラート作成
            let title = "課題５"
            let message = "割る数に0を入力しないで下さい"
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            // OKボタンを作成＆追加
            let ok = UIAlertAction(title: "OK", style: .default, handler:nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
        } else if num2 != 0 {
                //処理
                let result = num1 / num2
                //出力
                label.text = "\(result)"
        }
    }
}
