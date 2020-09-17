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
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemImageview: UIImageView!
    @IBOutlet weak var itemSmallView: UIView!
    @IBOutlet weak var goodImageView: UIImageView!
    @IBOutlet weak var goodButtonOutlet: UIButton!
    @IBAction func goodButton(_ sender: UIButton) {
    }
    
}

// MARK: - Life cycle
extension ItemSmallCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        imageUpdate()
    }
}

// MARK: - Protocol
extension ItemSmallCollectionViewCell {
    
}

// MARK: - method
extension ItemSmallCollectionViewCell {
    func imageUpdate(){
        itemImageview.layer.cornerRadius = 10
        itemSmallView.layer.cornerRadius = 10
        itemImageview.layer.maskedCorners = [.layerMaxXMinYCorner,.layerMinXMinYCorner]
        itemSmallView.layer.maskedCorners =  [.layerMaxXMaxYCorner,.layerMinXMaxYCorner]
        goodImageView.layer.cornerRadius = 15
        goodButtonOutlet.layer.cornerRadius = 15
    }
    
}

