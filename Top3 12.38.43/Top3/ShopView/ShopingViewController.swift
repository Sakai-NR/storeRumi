//
//  ShopingViewController.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/07/21.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class ShopingViewController: BaseViewController {
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var shopingMainTableView: ShopingMainTableView!
    
}

// MARK: - Life cycle
extension ShopingViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
        setButton()
        hideKeybord()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
}

// MARK: - Protocol
extension ShopingViewController:HeaderViewDelegate{
    func menuButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .slide_push
    }
    
    func memberButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .slide_push
    }
    
    func BackButton(_ sender: UIButton) {
       navigationController?.popViewController(animated: true)
       animatorManager.navigationType = .slide_push
//     let topMainViewController = TopMainViewController()
//        topMainViewController.openMenu()
        
    }
    
}

// MARK: - method
extension ShopingViewController {
    func setDelegate(){
        headerView.delegate = self
    }
    func setButton(){
        headerView.backButtonOutlet.isHidden = false
        headerView.menuButtonOutlet.isHidden = true
    }
    func hideKeybord() {
        let hideTap : UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKyeboardTap))
        hideTap.numberOfTapsRequired = 1
        self.view.isUserInteractionEnabled = true
        self.view.addGestureRecognizer(hideTap)
        
    }
    @objc func hideKyeboardTap(recognizer : UITapGestureRecognizer){
        self.view.endEditing(true)
        shopingMainTableView.seachBar.setShowsCancelButton(false, animated: true)
    }
    
}

