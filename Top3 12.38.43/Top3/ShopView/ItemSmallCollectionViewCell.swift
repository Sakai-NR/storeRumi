//
//  ItemSmallCollectionViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/09/04.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol ItemSmallCollectionViewCellDelegate: NSObjectProtocol{
    
}

extension ItemSmallCollectionViewCellDelegate {
    
}
// MARK: - Property
class ItemSmallCollectionViewCell: BaseCollectionViewCell {
    weak var delegate: ItemSmallCollectionViewCellDelegate? = nil
}

// MARK: - Life cycle
extension ItemSmallCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension ItemSmallCollectionViewCell {
    
}

// MARK: - method
extension ItemSmallCollectionViewCell {
    
}

