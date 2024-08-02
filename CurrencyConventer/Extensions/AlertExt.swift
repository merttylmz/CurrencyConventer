//
//  AlertExt.swift
//  CurrencyConventer
//
//  Created by Mert Yılmaz on 2.08.2024.
//

import UIKit

extension UIViewController {
    func showAlert(title: String,message: String,buttonTitle: String = "OK"){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: buttonTitle, style: .cancel, handler: nil)
        alertController.addAction(okButton)
        self.present(alertController, animated: true, completion: nil)
    }
}
