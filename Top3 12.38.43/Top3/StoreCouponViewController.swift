//
//  StoreCouponViewController.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/07/10.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class StoreCouponViewController: BaseViewController {
    @IBOutlet weak var hederView: HeaderView!
    @IBOutlet weak var coupnMainview: StoreCouponTableViewController!
    
}

// MARK: - Life cycle
extension StoreCouponViewController {
    override func loadView() {
        super.loadView()
        ButtonUpdata()
        setDelegate()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension StoreCouponViewController :HeaderViewDelegate{
    func menuButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .slide_pop
    }
    
    func memberButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .slide_pop
    }
    
    func BackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .slide_pop
    }
    
    
}

// MARK: - method
extension StoreCouponViewController {
    func setDelegate(){
        hederView.delegate = self
    }
    func ButtonUpdata(){
        hederView.menuButtonOutlet.isHidden = true
        hederView.backButtonOutlet.isHidden = false
    }
    
}

