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
    

    
}

// MARK: - Life cycle
extension ContentsCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension ContentsCollectionViewCell {
    
}

// MARK: - method
extension ContentsCollectionViewCell {
    func labelsUpdata(){
        
    }
    
}

