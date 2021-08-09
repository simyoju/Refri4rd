//
//  HomeVC.swift
//  Refri4rd
//
//  Created by simyo on 2021/08/09.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
}

//extension HomeVC: UITableViewDelegate, UITableViewDataSource {
//    func numberOfSections(in tableView: UITableView) -> Int {
//        let count = self.appDelegate
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
//}
