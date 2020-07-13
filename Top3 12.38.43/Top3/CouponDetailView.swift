//
//  CouponDetailView.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/07/11.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol CouponDetailViewDelegate: NSObjectProtocol{
    
}

extension CouponDetailViewDelegate {
    
}
// MARK: - Property
class CouponDetailView: BaseView {
    weak var delegate: CouponDetailViewDelegate? = nil
}

// MARK: - Life cycle
extension CouponDetailView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension CouponDetailView {
    
}

// MARK: - method
extension CouponDetailView {
    func viewCornerR(){
        
    }
}

