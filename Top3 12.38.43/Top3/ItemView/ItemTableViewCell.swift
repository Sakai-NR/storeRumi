//
//  ItemTableViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/09/14.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol ItemTableViewCellDelegate: NSObjectProtocol{
    
}

extension ItemTableViewCellDelegate {
    
}
// MARK: - Property
class ItemTableViewCell: BaseTableViewCell {
    weak var delegate: ItemTableViewCellDelegate? = nil
}

// MARK: - Life cycle
extension ItemTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension ItemTableViewCell {
    
}

// MARK: - method
extension ItemTableViewCell {
    
}

