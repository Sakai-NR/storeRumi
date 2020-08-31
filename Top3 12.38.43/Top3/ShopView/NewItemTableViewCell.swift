//
//  NewItemTableViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/08/25.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol NewItemTableViewCellDelegate: NSObjectProtocol{
    
}

extension NewItemTableViewCellDelegate {
    
}
// MARK: - Property
class NewItemTableViewCell: BaseTableViewCell {
    weak var delegate: NewItemTableViewCellDelegate? = nil
    @IBOutlet weak var NewItemImageView: UIImageView!
    @IBOutlet weak var explanationLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
}

// MARK: - Life cycle
extension NewItemTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        imageViewUpdate()
    }
}

// MARK: - Protocol
extension NewItemTableViewCell {
    
}

// MARK: - method
extension NewItemTableViewCell {
    func imageViewUpdate(){
        NewItemImageView.layer.cornerRadius = 10
    }
    
}

