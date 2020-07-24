//
//  SearchTableViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/07/24.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol SearchTableViewCellDelegate: NSObjectProtocol{
    
}

extension SearchTableViewCellDelegate {
    
}
// MARK: - Property
class SearchTableViewCell: BaseTableViewCell {
    weak var delegate: SearchTableViewCellDelegate? = nil
}

// MARK: - Life cycle
extension SearchTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension SearchTableViewCell {
    
}

// MARK: - method
extension SearchTableViewCell {
    
}

