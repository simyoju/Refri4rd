//
//  AddItemVC.swift
//  Refri4rd
//
//  Created by simyo on 2021/08/12.
//

import UIKit

class AddItemVC: UIViewController {
    @IBOutlet weak var itemImage: UIImageView!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submit(_ sender: Any) {
        
    }
    
}

//extension AddItemVC: UITableViewDataSource, UITableViewDelegate {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 4
//    }
//}
