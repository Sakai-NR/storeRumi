//
//  CouponUsedViewController.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/07/15.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class CouponUsedViewController: BaseViewController {
    @IBOutlet weak var headerView: HeaderView!

    @IBOutlet weak var maskView: MaskView!
    
    @IBOutlet weak var couponUsedView: CouponUsedView!
}

// MARK: - Life cycle
extension CouponUsedViewController {
    override func loadView() {
        super.loadView()
        HeaderViewSetUp()
        couponUsedViewMusk()
        setdelegate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension CouponUsedViewController:CouponUsedViewDelegate{
    func useButton(_ sender: UIButton) {
        
    }
    func noUseButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .none
    }
}


extension CouponUsedViewController:HeaderViewDelegate {
    func menuButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .none
    }
    
    func memberButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .none
    }
    
    func BackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .none
    }
    
    
}

// MARK: - method
extension CouponUsedViewController {
    func setdelegate(){
        headerView.delegate = self
        couponUsedView.delegate = self
    }
    
    func HeaderViewSetUp(){
        headerView.backButtonOutlet.isHidden = false
        headerView.menuButtonOutlet.isHidden = true
    }
    func couponUsedViewMusk(){
        maskView.alpha = 0.7
        }
    
}

