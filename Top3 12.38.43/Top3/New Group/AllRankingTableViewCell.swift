//
//  AllRankingTableViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/09/29.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol AllRankingTableViewCellDelegate: NSObjectProtocol{
    
}

extension AllRankingTableViewCellDelegate {
    
}
// MARK: - Property
class AllRankingTableViewCell: BaseTableViewCell {
    weak var delegate: AllRankingTableViewCellDelegate? = nil
    @IBOutlet weak var allRankingCollectionView: UICollectionView!
    @IBOutlet weak var allRankinCollectionViewFloeLayout: UICollectionViewFlowLayout!
    var priceLavels:[String] = ["¥1,000","¥2,000","¥3,000","¥4,000","¥5,000"]
    var itemLabels:[String] = ["商品名１","商品名２","商品名３","商品名４","商品名５"]
    
}

// MARK: - Life cycle
extension AllRankingTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setCollectionView()
    }
    override func draw(_ rect: CGRect) {
        super .draw(rect)
        allRankinCollectionViewFloeLayout.itemSize = CGSize(width: allRankingCollectionView.frame.width/2.1, height: allRankingCollectionView.frame.height)
    }
}

// MARK: - Protocol
extension AllRankingTableViewCell:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return priceLavels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AllRankingCollectionViewCell", for: indexPath)as? AllRankingCollectionViewCell else {return UICollectionViewCell()}
        cell.priceLabel.text = priceLavels[indexPath.row]
        cell.itemNameLabel.text = itemLabels[indexPath.row]
        return cell
    }
    
    
}

// MARK: - method
extension AllRankingTableViewCell {
    func setCollectionView(){
        allRankingCollectionView.dataSource = self
        loadCollectionViewCellFromXib(collectionView: allRankingCollectionView, cellName: "AllRankingCollectionViewCell")
        
    }
    
}

