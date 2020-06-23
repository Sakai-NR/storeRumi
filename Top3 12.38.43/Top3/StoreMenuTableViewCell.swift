//
//  StoreMenuTableViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/06/10.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol StoreMenuTableViewCellDelegate: NSObjectProtocol{
    
}

extension StoreMenuTableViewCellDelegate {
    
}
// MARK: - Property
class StoreMenuTableViewCell: BaseTableViewCell {
    weak var delegate: StoreMenuTableViewCellDelegate? = nil
    @IBOutlet weak var menuName: UILabel!
    @IBOutlet weak var menuPricelabel: UILabel!
    
}

// MARK: - Life cycle
extension StoreMenuTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension StoreMenuTableViewCell {
    
}

// MARK: - method
extension StoreMenuTableViewCell {
    
}

