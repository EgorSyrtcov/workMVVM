//
//  ViewController.swift
//  Temp
//
//  Created by Egor Syrtcov on 11/5/19.
//  Copyright © 2019 Egor Syrtcov. All rights reserved.
//

import UIKit
import SnapKit

final class HomeViewController: UIViewController {
    
    var viewModel: HomeViewModel?
    
    private let homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = homeView
    }
    
    @objc func buttonAction(sender: UIButton!) {
        guard let viewModel = viewModel else { return }
        viewModel.login()
    }
    
}
