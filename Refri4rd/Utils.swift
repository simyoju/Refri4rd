//
//  Utils.swift
//  Refri4rd
//
//  Created by simyo on 2021/08/12.
//

import Foundation
import UIKit

extension UIViewController {
    func alert(_ message: String, completion: (()->Void)? = nil){
        DispatchQueue.main.async {
            let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "확인", style: .cancel) { (_) in
                completion?()
            }
            alert.addAction(okAction)
            self.present(alert, animated: false)
        }
    }
}
