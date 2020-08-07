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
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ContentsCollectionViewCell", for: indexPath)as? ContentsCollectionViewCell else {return UICollectionViewCell()}
        return cell
    }
}

// MARK: - method
extension ContenrtsTableCollectionViewCell {
    
}

