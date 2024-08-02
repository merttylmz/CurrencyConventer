//
//  CustomButton.swift
//  CurrencyConventer
//
//  Created by Mert Yılmaz on 2.08.2024.
//

import UIKit

class CustomButton:UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureButton()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureButton(){
        
        setTitle("GET DATA", for: .normal)
        backgroundColor = .systemBlue
        setTitleColor(.white, for: .normal)
        layer.cornerRadius = 10
                
    }
    
}
