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
    @IBOutlet weak var couponIcon: UIImageView!
    @IBOutlet weak var couponNamelabel: UILabel!
    @IBOutlet weak var couponTitlelabel: UILabel!
    @IBOutlet weak var couponImage: UIImageView!
    @IBOutlet weak var couponButtonSetUp: UIButton!
    @IBAction func couponUseButton(_ sender: UIButton) {
    }
    
}

// MARK: - Life cycle
extension CouponDetailView {
    override func awakeFromNib() {
        super.awakeFromNib()
        viewUpdata()
    }
}

// MARK: - Protocol
extension CouponDetailView {
    
}

// MARK: - method
extension CouponDetailView {
    func viewUpdata(){
        couponIcon.layer.cornerRadius = 10
        couponTitlelabel.layer.cornerRadius = 5
        couponTitlelabel.clipsToBounds = true
        couponImage.layer.cornerRadius = 10
        couponButtonSetUp.layer.cornerRadius = 10
    }
    func couponNameUpdata(name:String){
        couponNamelabel.text = name
    }
}

