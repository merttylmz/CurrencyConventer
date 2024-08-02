//
//  ViewController.swift
//  CurrencyConventer
//
//  Created by Mert Yılmaz on 2.08.2024.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Variables
    lazy var titleLabel = CustomLabel(textTitle: "EURO EXCHANGE", titleColor: .darkGray)
    lazy var dolarLabel = CustomLabel()
    lazy var poundLabel = CustomLabel()
    lazy var turkishLirasLabel = CustomLabel()
    lazy var cadLabel = CustomLabel()
    
    lazy var getButton = CustomButton()
    
    
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "mainColor")
        setupUI()
        addTarget()
    }
    
    // MARK: - Helpers

    func setupUI(){
        configureWithExt()
    }

    func addTarget(){
        getButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }
    
    @objc func buttonClicked(){
        getData()
    }
    
    
    func configureWithExt(){
        view.addSubviewsFromExtension(dolarLabel,titleLabel,poundLabel,turkishLirasLabel,cadLabel,getButton)
        let standartPadding: CGFloat = 70
        let standartHeight: CGFloat = 50
        titleLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                        left: view.leftAnchor,
                        right: view.rightAnchor,
                        paddingTop: 50,
                        paddingLeft: standartPadding,
                        paddingRight: -standartPadding,
                        height: standartHeight)
        dolarLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                        left: view.leftAnchor,
                        right: view.rightAnchor,
                        paddingTop: 140,
                        paddingLeft: standartPadding,
                        paddingRight: -standartPadding,
                        height: standartHeight)
        poundLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                        left: view.leftAnchor,
                        right: view.rightAnchor,
                        paddingTop: 230,
                        paddingLeft: standartPadding,
                        paddingRight: -standartPadding,
                        height: standartHeight)
        turkishLirasLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                        left: view.leftAnchor,
                        right: view.rightAnchor,
                        paddingTop: 320,
                        paddingLeft: standartPadding,
                        paddingRight: -standartPadding,
                        height: standartHeight)
        cadLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                        left: view.leftAnchor,
                        right: view.rightAnchor,
                        paddingTop: 410,
                        paddingLeft: standartPadding,
                        paddingRight: -standartPadding,
                        height: standartHeight)
        getButton.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                         left: view.leftAnchor,
                         right: view.rightAnchor,
                         paddingTop: 520,
                         paddingLeft: standartPadding,
                         paddingRight: -standartPadding,
                         height: standartHeight)
    }

}

