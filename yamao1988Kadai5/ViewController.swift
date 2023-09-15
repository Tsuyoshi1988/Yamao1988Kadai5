import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var text1: UITextField!
    @IBOutlet weak private var text2: UITextField!
    
    @IBOutlet weak private var label: UILabel!

    @IBAction func calculate(_ sender: Any) {
        self.calculate()
    }
    
    func calculate() {
        let num1 = Float(text1.text ?? "")
        let num2 = Float(text2.text ?? "")  //数値も文字列も０と見なしている。Num１とnum2文字列と０を区別できるように条件分岐できるようにする。by Seigetsuくんより
        
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
            
        } else if text2.text?.isEmpty ?? true {
            // アラート作成
            let title = "課題５"
            let message = "割る数を入力して下さい"
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            // OKボタンを作成＆追加
            let ok = UIAlertAction(title: "OK", style: .default, handler:nil)
            alert.addAction(ok)

            // アラートを表示
            present(alert, animated: true, completion: nil)
            
        } else if num1 != (self.text1.text! as NSString).floatValue {
            // アラート作成
            let title = "課題５"
            let message = "割られる数に数値以外を入力しないで下さい"
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            // OKボタンを作成＆追加
            let ok = UIAlertAction(title: "OK", style: .default, handler:nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
        } else if num2 != (self.text2.text! as NSString).floatValue {
            // アラート作成
            let title = "課題５"
            let message = "割る数に数値以外を入力しないで下さい"
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            // OKボタンを作成＆追加
            let ok = UIAlertAction(title: "OK", style: .default, handler:nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
        } else if num2 == 0  {
            // アラート作成
            let title = "課題５"
            let message = "割る数に0を入力しないで下さい"
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            // OKボタンを作成＆追加
            let ok = UIAlertAction(title: "OK", style: .default, handler:nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
        } else if num2 != 0 && text2.text == nil {
            // アラート作成
            let title = "課題５"
            let message = "割る数には実数を入力してください"
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            // OKボタンを作成＆追加
            let ok = UIAlertAction(title: "OK", style: .default, handler:nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
        } else {
                //処理
            let result = (num1 ?? 0) / (num2 ?? 0)
                //出力
                label.text = "\(result)"
        }
    }
}
