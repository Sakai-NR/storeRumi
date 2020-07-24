//
//  BigImageTableViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/07/24.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol BigImageTableViewCellDelegate: NSObjectProtocol{
    
}

extension BigImageTableViewCellDelegate {
    
}
// MARK: - Property
class BigImageTableViewCell: BaseTableViewCell {
    weak var delegate: BigImageTableViewCellDelegate? = nil
}

// MARK: - Life cycle
extension BigImageTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension BigImageTableViewCell {
    
}

// MARK: - method
extension BigImageTableViewCell {
    
}

