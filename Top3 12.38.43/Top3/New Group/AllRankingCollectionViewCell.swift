//
//  AllRankingCollectionViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/09/29.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol AllRankingCollectionViewCellDelegate: NSObjectProtocol{
    
}

extension AllRankingCollectionViewCellDelegate {
    
}
// MARK: - Property
class AllRankingCollectionViewCell: BaseCollectionViewCell {
    weak var delegate: AllRankingCollectionViewCellDelegate? = nil
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var allRankingItemView: UIView!
}

// MARK: - Life cycle
extension AllRankingCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        imageUpdate()
        setView()
    }
}

// MARK: - Protocol
extension AllRankingCollectionViewCell {
    
}

// MARK: - method
extension AllRankingCollectionViewCell {
    func imageUpdate(){
        itemImageView.layer.cornerRadius = 10
        itemImageView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
    }
    func setView(){
        allRankingItemView.layer.cornerRadius = 10
    }
    
}

