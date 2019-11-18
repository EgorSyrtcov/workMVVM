//
//  MainView.swift
//  Temp
//
//  Created by Egor Syrtcov on 11/18/19.
//  Copyright © 2019 Egor Syrtcov. All rights reserved.
//

// MVVM
// Model, View, ViewModel

// View - HomeView
// ViewModel - HomeViewModel

// Model = View + ViewModel = HomeViewController

// Coordinator: Create all entities


import UIKit

final class HomeView: UIView {
    
    private let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.textAlignment = .center
        nameLabel.text = "Hello"
        nameLabel.font = UIFont.systemFont(ofSize: 25)
        return nameLabel
    }()
    
   private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.addTarget(self, action: #selector(HomeViewController.buttonAction), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        backgroundColor = .white
        assemble()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func assemble() {
        addSubview(nameLabel)
        addSubview(button)
    }
    
    fileprivate func setupLayout() {
        nameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(snp.topMargin).offset(30)
            make.centerX.equalToSuperview()
        }
        button.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.width.equalTo(100)
        }
    }
}
