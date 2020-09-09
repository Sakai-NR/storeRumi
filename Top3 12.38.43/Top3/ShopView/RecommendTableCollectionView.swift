//
//  RecommendTableCollectionView.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/08/24.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol RecommendTableCollectionViewDelegate: NSObjectProtocol{
    
}

extension RecommendTableCollectionViewDelegate {
    
}
// MARK: - Property
class RecommendTableCollectionView: BaseTableViewCell {
    weak var delegate: RecommendTableCollectionViewDelegate? = nil
    @IBOutlet weak var recommendCollectionView: UICollectionView!
    @IBOutlet weak var recommendCollectionViewFlowLayout: UICollectionViewFlowLayout!
    var brandName :[String] = ["ブランド名","ブランド名","ブランド名","ブランド名","ブランド名","ブランド名",]
    var itemName : [String] = ["商品名","商品名","商品名","商品名","商品名","商品名",]
    var price : [String] = ["¥1,000","¥2,000","¥3,000","¥4,000","¥5,000","¥6,000",]
    var tax : [String] = ["","","","","","",]
    var comment : [String] = ["10%OFF","10%OFF","10%OFF","10%OFF","10%OFF","10%OFF",]
    var post : [String] = ["","","","","","","",]
    var star : [String] = ["☆","☆☆","☆☆","☆☆☆","☆☆☆☆","☆☆☆☆","☆☆☆☆",]
}

// MARK: - Life cycle
extension RecommendTableCollectionView {
    override func awakeFromNib() {
        super.awakeFromNib()
        recommendCollectionView.dataSource = self
        loadCollectionViewCellFromXib(collectionView: recommendCollectionView, cellName: "ItemSmallCollectionViewCell")
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        recommendCollectionViewFlowLayout.itemSize = CGSize(width: recommendCollectionView.frame.width/2.2, height: recommendCollectionView.frame.height)
    }
}

// MARK: - Protocol
extension RecommendTableCollectionView:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return brandName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemSmallCollectionViewCell", for: indexPath)as? ItemSmallCollectionViewCell else {return UICollectionViewCell()}
//        cell.brandLabel.text = brandName[indexPath.row]
//        cell.itemNameLabel.text = itemName[indexPath.row]
//        cell.priceLabel.text = price[indexPath.row]
//        cell .taxLabel.text = tax[indexPath.row]
//        cell.commentLabel.text = comment[indexPath.row]
//        cell.postLabel.text = "送料込み"
//        cell.starLabel.text = star[indexPath.row]
        return cell
    }
    
    
}

// MARK: - method
extension RecommendTableCollectionView {
    
}

