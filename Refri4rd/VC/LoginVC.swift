//
//  LoginVC.swift
//  Refri4rd
//
//  Created by simyo on 2021/08/11.
//

import UIKit
import Alamofire

class LoginVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var fieldEmail: UITextField!
    var fieldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    @IBAction func login(_ sender: Any) {
        
    }
    
}

extension LoginVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        let tfFrame = CGRect(x: 20, y: 0, width: cell.bounds.width - 20, height: 37)
        switch indexPath.row {
        case 0:
            self.fieldEmail = UITextField(frame: tfFrame)
            self.fieldEmail.placeholder = "이메일"
            self.fieldEmail.borderStyle = .none
            self.fieldEmail.autocapitalizationType = .none
            self.fieldEmail.font = UIFont.systemFont(ofSize: 14)
            cell.addSubview(self.fieldEmail)
        case 1:
            self.fieldPassword = UITextField(frame: tfFrame)
            self.fieldPassword.placeholder = "비밀번호"
            self.fieldEmail.borderStyle = .none
            self.fieldPassword.isSecureTextEntry = true
            self.fieldPassword.font = UIFont.systemFont(ofSize: 14)
            cell.addSubview(self.fieldPassword)
        default:
            ()
        }
        return cell
    }
    
    
}
