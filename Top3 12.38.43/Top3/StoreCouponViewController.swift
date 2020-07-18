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
    @IBOutlet weak var couponDetailView: CouponDetailView!
    var coupnNameLabel = ""
}

// MARK: - Life cycle
extension StoreCouponViewController {
    override func loadView() {
        super.loadView()
        ButtonUpdata()
        setDelegate()
        couponNameSet()
                
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
extension StoreCouponViewController :CouponDetailViewDelegate{
    func couponUseButton(_ sender: UIButton) {
        let couponUsedViewController = CouponUsedViewController()
        transitionViewController(from: self, to: couponUsedViewController)
        animatorManager.navigationType = .none
    }
    
    
}

// MARK: - method
extension StoreCouponViewController {
    func setDelegate(){
        hederView.delegate = self
        couponDetailView.delegate = self
    }
    func ButtonUpdata(){
        hederView.menuButtonOutlet.isHidden = true
        hederView.backButtonOutlet.isHidden = false
    }
    func couponNameSet(){
        couponDetailView.couponNameUpdata(name:coupnNameLabel)
    }
}

