//
//  RecommendTableCollectionViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/08/24.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol RecommendTableCollectionViewCellDelegate: NSObjectProtocol{
    
}

extension RecommendTableCollectionViewCellDelegate {
    
}
// MARK: - Property
class RecommendTableCollectionViewCell: BaseCollectionViewCell {
    weak var delegate: RecommendTableCollectionViewCellDelegate? = nil
    @IBOutlet weak var recommendView: UIView!
    @IBOutlet weak var recommendImageView: UIImageView!
    @IBOutlet weak var goodImage: UIImageView!
    @IBAction func goodButton(_ sender: UIButton) {
    }
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var taxLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
}

// MARK: - Life cycle
extension RecommendTableCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        CornerUpdate()
        labelUpdate()
    }
}

// MARK: - Protocol
extension RecommendTableCollectionViewCell {
    
}

// MARK: - method
extension RecommendTableCollectionViewCell {
//    cornerRudies
    func CornerUpdate(){
        recommendView.layer.cornerRadius = 10
        recommendImageView.layer.cornerRadius = 10
        recommendImageView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        goodImage.layer.cornerRadius = 15
        
    }
    func labelUpdate(){
//        proceLabel
        priceLabel.textColor = .red
//        commentLabel
        commentLabel.layer.borderColor = UIColor.red.cgColor
        commentLabel.textColor = .white
        commentLabel.layer.borderWidth = 1
        commentLabel.layer.cornerRadius = 2
        commentLabel.backgroundColor = UIColor.red
//        postLabel
        postLabel.layer.cornerRadius = 2
        postLabel.layer.borderWidth = 1
        postLabel.layer.borderColor = UIColor.gray.cgColor
    
    }
}


