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

