//
//  ContentsCollectionViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/07/28.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol ContentsCollectionViewCellDelegate: NSObjectProtocol{
    
}

extension ContentsCollectionViewCellDelegate {
    
}
// MARK: - Property
class ContentsCollectionViewCell: BaseCollectionViewCell {
    weak var delegate: ContentsCollectionViewCellDelegate? = nil
}

// MARK: - Life cycle
extension ContentsCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension ContentsCollectionViewCell {
    
}

// MARK: - method
extension ContentsCollectionViewCell {
    
}

