//
//  MenuTableViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/01/28.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol MenuTableViewCellDelegate: NSObjectProtocol{
    
}

extension MenuTableViewCellDelegate {
    
}
// MARK: - Property
class MenuTableViewCell: BaseTableViewCell {
    weak var delegate: MenuTableViewCellDelegate? = nil

    @IBOutlet weak var menuLabel: UILabel!
    
    
}

// MARK: - Life cycle
extension MenuTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension MenuTableViewCell {
    
}

// MARK: - method
extension MenuTableViewCell {
    
}

