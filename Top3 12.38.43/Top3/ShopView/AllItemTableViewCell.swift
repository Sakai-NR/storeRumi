//
//  AllItemTableViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/09/01.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol AllItemTableViewCellDelegate: NSObjectProtocol{
    
}

extension AllItemTableViewCellDelegate {
    
}
// MARK: - Property
class AllItemTableViewCell: BaseTableViewCell {
    weak var delegate: AllItemTableViewCellDelegate? = nil
    @IBOutlet weak var allItemLabel: UILabel!
}

// MARK: - Life cycle
extension AllItemTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension AllItemTableViewCell {
    
}

// MARK: - method
extension AllItemTableViewCell {
    
}

