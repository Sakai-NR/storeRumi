//
//  CouponUsedView.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/07/15.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol CouponUsedViewDelegate: NSObjectProtocol{
    func useButton(_ sender: UIButton)
    func noUseButton(_ sender: UIButton)
    
}

extension CouponUsedViewDelegate {
    
}
// MARK: - Property
class CouponUsedView: BaseView {
    weak var delegate: CouponUsedViewDelegate? = nil
    @IBOutlet weak var confimationView: UIView!
    @IBAction func useButton(_ sender: UIButton) {
        delegate?.useButton(sender)
    }
    @IBAction func noUseButton(_ sender: UIButton) {
        delegate?.noUseButton(sender)
    }
    @IBOutlet weak var useButtonOutlet: UIButton!
    @IBOutlet weak var noUseButtonOutlet: UIButton!
    @IBOutlet var usedMainView: UIView!
    
}

// MARK: - Life cycle
extension CouponUsedView {
    override func awakeFromNib() {
        super.awakeFromNib()
        confimationSetup()
    }
}

// MARK: - Protocol
extension CouponUsedView {
    
}

// MARK: - method
extension CouponUsedView {
   func confimationSetup(){
    confimationView.layer.cornerRadius = 10
//    usedMainView
    usedMainView.layer.cornerRadius = 10
//    useButton
    useButtonOutlet.layer.borderColor = UIColor.gray.cgColor
    useButtonOutlet.layer.borderWidth = 1
    useButtonOutlet.layer.cornerRadius = 10
    useButtonOutlet.layer.maskedCorners = [.layerMinXMaxYCorner]
//    noUseButton
    noUseButtonOutlet.layer.borderWidth = 1
    noUseButtonOutlet.layer.borderColor = UIColor.gray.cgColor
    noUseButtonOutlet.layer.cornerRadius = 10
    noUseButtonOutlet.layer.maskedCorners = [.layerMaxXMaxYCorner]
    }
}

