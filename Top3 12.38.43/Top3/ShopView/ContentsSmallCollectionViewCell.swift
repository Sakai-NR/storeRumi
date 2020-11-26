//
//  ContentsSmallCollectionViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/09/10.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol ContentsSmallCollectionViewCellDelegate: NSObjectProtocol{
    
}

extension ContentsSmallCollectionViewCellDelegate {
    
}
// MARK: - Property
class ContentsSmallCollectionViewCell: BaseCollectionViewCell {
    weak var delegate: ContentsSmallCollectionViewCellDelegate? = nil
    @IBOutlet weak var itemIamgeView: UIImageView!
    @IBOutlet weak var contentBackView: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var goodImageView: UIImageView!
    @IBAction func goodButton(_ sender: UIButton) {
    }
    @IBOutlet weak var goodButtonOutlet: UIButton!
}

// MARK: - Life cycle
extension ContentsSmallCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        imageUpdate()
    }
}

// MARK: - Protocol
extension ContentsSmallCollectionViewCell {
    
}

// MARK: - method
extension ContentsSmallCollectionViewCell {
    func imageUpdate(){
        itemIamgeView.layer.cornerRadius = 10
        itemIamgeView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        contentBackView.layer.cornerRadius = 10
        goodImageView.layer.cornerRadius = 15
        goodButtonOutlet.layer.cornerRadius = 15
    }
    func getItem(itemName: String, price: String, indexPath: IndexPath) {
//        itemNameLabel.text = itemName
//        priceLabel.text = price
       }
}

