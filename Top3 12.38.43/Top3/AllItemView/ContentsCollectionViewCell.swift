//
//  ContentsCollectionViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/07/28.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol ContentsCollectionViewCellDelegate: NSObjectProtocol{
    
}

extension ContentsCollectionViewCellDelegate {
    
}
// MARK: - Property
class ContentsCollectionViewCell: BaseCollectionViewCell {
    weak var delegate: ContentsCollectionViewCellDelegate? = nil
    @IBOutlet weak var prodactView: UIView!
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var goodImage: UIImageView!
    @IBAction func goodButton(_ sender: UIButton) {
    }
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var ItemNamneLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var taxLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    
    @IBOutlet weak var starLabel: UILabel!
    var contentsSmallCollectionViewCell = ContentsSmallCollectionViewCell()
    
}

// MARK: - Life cycle
extension ContentsCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        CornerUpdate()
        labelUpdate()
        
    }
}

// MARK: - Protocol
extension ContentsCollectionViewCell {
    
}

// MARK: - method
extension ContentsCollectionViewCell {
    
    func CornerUpdate(){
        prodactView.layer.cornerRadius = 10
        productImageView.layer.cornerRadius = 10
        productImageView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        goodImage.layer.cornerRadius = 15
    }
    func labelUpdate(){
        priceLabel.textColor = UIColor.red
//        taxLabel
        taxLabel.text = "税込み"
//        postLabel
        postLabel.text = "送料込み"
        postLabel.layer.borderWidth = 1
        postLabel.layer.borderColor = UIColor.gray.cgColor
        postLabel.layer.cornerRadius = 2
        postLabel.clipsToBounds = true
//        comentLabel
        commentLabel.layer.borderWidth = 1
        commentLabel.layer.borderColor = UIColor.red.cgColor
        commentLabel.backgroundColor = UIColor.red
        commentLabel.textColor = UIColor.white
        commentLabel.layer.cornerRadius = 2
        commentLabel.clipsToBounds = true
        
    }
    func brandNameUpdate(names:String){
        brandLabel.text = names
    }
//    func itemNameUpdate(name:String){
//        ItemNamneLabel.text = name
//    }
    func getItem(itemName: String, price: String, indexPath: IndexPath) {
//        self.ItemNamneLabel.text = itemName
//        self.priceLabel.text = price

//        rrrrrrr
//        test
    }
}

