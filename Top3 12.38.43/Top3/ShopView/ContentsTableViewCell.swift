//
//  ContentsTableViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/07/24.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol ContentsTableViewCellDelegate: NSObjectProtocol{
    
}

extension ContentsTableViewCellDelegate {
    
}
// MARK: - Property
class ContentsTableViewCell: BaseTableViewCell {
    weak var delegate: ContentsTableViewCellDelegate? = nil
    @IBOutlet weak var contentsLabel: UILabel!
}

// MARK: - Life cycle
extension ContentsTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        cellUpdata()
    }
}

// MARK: - Protocol
extension ContentsTableViewCell {
    
}

// MARK: - method
extension ContentsTableViewCell {
    func cellUpdata(){
       contentsLabel.text = "人気ランキング！!"
    }
}

