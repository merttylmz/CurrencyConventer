//
//  getData.swift
//  CurrencyConventer
//
//  Created by Mert Yılmaz on 2.08.2024.
//

import UIKit

extension ViewController {
    func getData(){
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=7fcd6870bc143fe63a552e589c4c4640")
        let session = URLSession.shared
        let task = session.dataTask(with: url!) { data, response, error in
            if error != nil {
                self.showAlert(title: "Error", message: error?.localizedDescription ?? "Error!", buttonTitle: "OK")
            }else {
                if data != nil {
                    do {
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String, Any>
                        
                        DispatchQueue.main.async {
                            if let rates = jsonResponse["rates"] as? [String : Any] {
                                if let usd = rates["USD"] as? Double {
                                    self.dolarLabel.text = "USD: \(usd)"
                                }
                                if let turkishLiras = rates["TRY"] as? Double {
                                    self.turkishLirasLabel.text = "TRY: \(turkishLiras)"
                                }
                                if let cad = rates["CAD"] as? Double {
                                    self.cadLabel.text = "USD: \(cad)"
                                }
                                if let usd = rates["USD"] as? Double {
                                    self.dolarLabel.text = "USD: \(usd)"
                                }
                                if let usd = rates["USD"] as? Double {
                                    self.dolarLabel.text = "USD: \(usd)"
                                }
                            }
                        }
                    }catch {
                        print("error")
                    }
                }
            }
        }
        task.resume()
    }
}
