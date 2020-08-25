//
//  ContenrtsTableCollectionViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/07/28.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol ContenrtsTableCollectionViewCellDelegate: NSObjectProtocol{
    
}

extension ContenrtsTableCollectionViewCellDelegate {
    
}
// MARK: - Property
class ContenrtsTableCollectionViewCell: BaseTableViewCell {
    weak var delegate: ContenrtsTableCollectionViewCellDelegate? = nil
   
    @IBOutlet weak var contentsCollectionView: UICollectionView!
    @IBOutlet weak var contensCollectionVewFlowLayout: UICollectionViewFlowLayout!
    var brandName :[String] = ["ブランド名","ブランド名","ブランド名","ブランド名","ブランド名","ブランド名",]
    var itemName : [String] = ["商品名","商品名","商品名","商品名","商品名","商品名",]
    var price : [String] = ["¥1,000","¥2,000","¥3,000","¥4,000","¥5,000","¥6,000",]
    var tax : [String] = ["","","","","","",]
    var comment : [String] = ["10%OFF","10%OFF","10%OFF","10%OFF","10%OFF","10%OFF",]
    var post : [String] = ["","","","","","","",]
    var star : [String] = ["☆","☆☆","☆☆","☆☆☆","☆☆☆☆","☆☆☆☆","☆☆☆☆",]
}

// MARK: - Life cycle
extension ContenrtsTableCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        contentsCollectionView.dataSource = self
        loadCollectionViewCellFromXib(collectionView: contentsCollectionView, cellName: "ContentsCollectionViewCell")
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        contensCollectionVewFlowLayout.itemSize = CGSize(width: contentsCollectionView.frame.width/2.2, height: contentsCollectionView.frame.height)
    }
    
}

// MARK: - Protocol
extension ContenrtsTableCollectionViewCell :UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return brandName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ContentsCollectionViewCell", for: indexPath)as? ContentsCollectionViewCell else {return UICollectionViewCell()}
        cell.brandLabel.text = brandName[indexPath.row]
        cell.ItemNamneLabel.text = itemName[indexPath.row]
        cell.priceLabel.text = price[indexPath.row]
        cell.starLabel.text = star[indexPath.row]
        cell.commentLabel.text = comment[indexPath.row]
        return cell
    }
}

// MARK: - method
extension ContenrtsTableCollectionViewCell {
    
}

