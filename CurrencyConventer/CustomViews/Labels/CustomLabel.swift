//
//  CustomLabel.swift
//  CurrencyConventer
//
//  Created by Mert Yılmaz on 2.08.2024.
//

import UIKit

class CustomLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(textTitle: String, titleColor: UIColor) {
        self.init(frame: .zero)
        set(textTitle: textTitle,titleColor: textColor)
    }
    
    
    
    
    func configureLabel(){
        text = ""
        textColor = UIColor(named: "textColor")
        //backgroundColor = .red
        textAlignment = .center
    }
    
    private func set(textTitle: String, titleColor: UIColor) {
        text = textTitle
        textColor = titleColor
    }
    
    
}
