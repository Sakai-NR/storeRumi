//
//  ItemTableViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/09/14.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol ItemTableViewCellDelegate: NSObjectProtocol{
    
}

extension ItemTableViewCellDelegate {
    
}
// MARK: - Property
class ItemTableViewCell: BaseTableViewCell {
    weak var delegate: ItemTableViewCellDelegate? = nil
    @IBOutlet weak var allRankingCollectionView: UICollectionView!
    @IBOutlet weak var allRankingCollectionViewFlowLayout: UICollectionViewFlowLayout!
    var brandName = ""
    var itemNameLabels = ""
    
}

// MARK: - Life cycle
extension ItemTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpdate()
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        allRankingCollectionViewFlowLayout.itemSize = CGSize(width: allRankingCollectionView.frame.width, height: allRankingCollectionView.frame.height)
    }
}

// MARK: - Protocol
extension ItemTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ContentsCollectionViewCell", for: indexPath)as? ContentsCollectionViewCell else{return UICollectionViewCell()}
        cell.brandNameUpdate(names: brandName)
        cell.itemNameUpdate(name: itemNameLabels)
        return cell
    }
}
// MARK: - method
extension ItemTableViewCell {
    func setUpdate(){
    allRankingCollectionView.dataSource = self
    loadCollectionViewCellFromXib(collectionView: allRankingCollectionView, cellName: "ContentsCollectionViewCell")
   }
}
