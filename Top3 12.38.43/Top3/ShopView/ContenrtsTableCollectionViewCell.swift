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
    func selectedCollectionView(indexpath:IndexPath)
}

extension ContenrtsTableCollectionViewCellDelegate {
    
}
// MARK: - Property
class ContenrtsTableCollectionViewCell: BaseTableViewCell {
    weak var delegate: ContenrtsTableCollectionViewCellDelegate? = nil
   
    @IBOutlet weak var contentsCollectionView: UICollectionView!
    @IBOutlet weak var contensCollectionVewFlowLayout: UICollectionViewFlowLayout!
    var itemName = ""
    var prices = ""

    
//    var brandName :[String] = ["ブランド名","ブランド名","ブランド名","ブランド名","ブランド名","ブランド名",]
    var itemNames: [String] = ["商品名1","商品名2","商品名3","商品名4","商品名5","商品名6",]
    var price : [String] = ["¥1,000","¥2,000","¥3,000","¥4,000","¥5,000","¥6,000",]
//    var tax : [String] = ["","","","","","",]
//    var comment : [String] = ["10%OFF","10%OFF","10%OFF","10%OFF","10%OFF","10%OFF",]
//    var post : [String] = ["","","","","","","",]
//    var star : [String] = ["☆","☆☆","☆☆","☆☆☆","☆☆☆☆","☆☆☆☆","☆☆☆☆",]
}

// MARK: - Life cycle
extension ContenrtsTableCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        contentsCollectionView.delegate = self
        contentsCollectionView.dataSource = self
        loadCollectionViewCellFromXib(collectionView: contentsCollectionView, cellName: "ContentsSmallCollectionViewCell")
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        contensCollectionVewFlowLayout.itemSize = CGSize(width: contentsCollectionView.frame.width/2.2, height: contentsCollectionView.frame.height)
    }
}

// MARK: - Protocol
extension ContenrtsTableCollectionViewCell :UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ContentsSmallCollectionViewCell", for: indexPath)as? ContentsSmallCollectionViewCell else {return UICollectionViewCell()}
//        cell.brandLabel.text = brandName[indexPath.row]
        cell.itemNameLabel.text = itemNames[indexPath.row]
        cell.priceLabel.text = price[indexPath.row]
//        cell.starLabel.text = star[indexPath.row]
//        cell.commentLabel.text = comment[indexPath.row]
        return cell
    }
}
extension ContenrtsTableCollectionViewCell :UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        delegate?.selectedCollectionView(indexpath: indexPath)
    }
}



// MARK: - method
extension ContenrtsTableCollectionViewCell {
    
}

