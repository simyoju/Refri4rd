//
//  UserVC.swift
//  Refri4rd
//
//  Created by simyo on 2021/08/11.
//

import UIKit
import Alamofire

class UserVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var fieldEmail: UITextField!
    var fieldNickname: UITextField!
    var fieldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self

    }
    
    @IBAction func submit(_ sender: Any) {
        let param: Parameters = [
        "email" : self.fieldEmail.text!,
        "nickname" : self.fieldNickname.text! ,
        "password" : self.fieldPassword.text!
        ]
        
        let url = "http://27.35.18.238/api/users"
        let call = AF.request(url, method: .post, parameters: param, encoding: JSONEncoding.default)
        
        call.responseJSON { res in
            guard let jsonObject = try! res.result.get() as? [String: Any] else {
                print("error")
                return
            }
        }
        
        
    }
    

}

extension UserVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        let tfFrame = CGRect(x: 20, y: 0, width: cell.bounds.width - 20, height: 37)
        switch indexPath.row {
        case 0:
            self.fieldNickname = UITextField(frame: tfFrame)
            self.fieldNickname.placeholder = "닉네임"
            self.fieldNickname.borderStyle = .none
            self.fieldNickname.autocapitalizationType = .none
            self.fieldNickname.font = UIFont.systemFont(ofSize: 14)
            cell.addSubview(self.fieldNickname)
        case 1:
            self.fieldEmail = UITextField(frame: tfFrame)
            self.fieldEmail.placeholder = "이메일"
            self.fieldEmail.borderStyle = .none
            self.fieldEmail.autocapitalizationType = .none
            self.fieldEmail.font = UIFont.systemFont(ofSize: 14)
            cell.addSubview(self.fieldEmail)
        case 2:
            self.fieldPassword = UITextField(frame: tfFrame)
            self.fieldPassword.placeholder = "비밀번호"
            self.fieldPassword.borderStyle = .none
            self.fieldPassword.isSecureTextEntry = true
            self.fieldPassword.font = UIFont.systemFont(ofSize: 14)
            cell.addSubview(self.fieldPassword)
        default:
            ()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
}
