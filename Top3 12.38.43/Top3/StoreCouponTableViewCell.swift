//
//  StoreCouponTableViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/06/26.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol StoreCouponTableViewCellDelegate: NSObjectProtocol{
    
}

extension StoreCouponTableViewCellDelegate {
    
}
// MARK: - Property
class StoreCouponTableViewCell: BaseTableViewCell {
    weak var delegate: StoreCouponTableViewCellDelegate? = nil
    @IBOutlet weak var couponImageView: UIImageView!
    @IBOutlet weak var couponNameLabel: UILabel!
    @IBOutlet weak var couponStartLabel: UILabel!
    @IBOutlet weak var couponEndLabel: UILabel!
    @IBOutlet weak var couponDetailLabel: UILabel!
}

// MARK: - Life cycle
extension StoreCouponTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension StoreCouponTableViewCell {
    
}

// MARK: - method
extension StoreCouponTableViewCell {
    
}

