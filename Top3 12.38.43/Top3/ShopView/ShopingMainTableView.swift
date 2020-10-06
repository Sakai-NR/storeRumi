//
//  ShopingMainTableView.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/07/22.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol ShopingMainTableViewDelegate: NSObjectProtocol{
    func selectedRow(indexpath:IndexPath)
    func searchBarShouldBeginEditing()
    func searchBarShouldEndEditing()
    func selectedCollectionView(indexpath:IndexPath)
}

extension ShopingMainTableViewDelegate {
    
}
// MARK: - Property
class ShopingMainTableView: BaseView {
    weak var delegate: ShopingMainTableViewDelegate? = nil
    @IBOutlet weak var shopingTableView: UITableView!
    var seachBar : UISearchBar = UISearchBar()
}

// MARK: - Life cycle
extension ShopingMainTableView {
    override func awakeFromNib() {
        super.awakeFromNib()
        tableViewSet()
        shopingTableView.dataSource = self
        shopingTableView.delegate = self
        
    }
}


// MARK: - Protocol
extension ShopingMainTableView: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath)as? SearchTableViewCell else{return UITableViewCell()}
            seachBar = cell.shopSearchBar
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "BigImageTableViewCell", for: indexPath)as? BigImageTableViewCell else {return UITableViewCell()}
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContentsTableViewCell", for: indexPath)as? ContentsTableViewCell else{return UITableViewCell()}
            cell.contentsLabel.text = "人気ランキング！！"
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContenrtsTableCollectionViewCell", for: indexPath)as? ContenrtsTableCollectionViewCell else {return UITableViewCell()}
            cell.delegate = self
            return cell
        case 4:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "AllItemTableViewCell", for: indexPath)as? AllItemTableViewCell else{return UITableViewCell()}
            cell.allItemLabel.text = "全てをみ見る＞"
            return cell
        case 5:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContentsTableViewCell", for: indexPath)as? ContentsTableViewCell else {return UITableViewCell()}
            cell.contentsLabel.text = "おすすめの商品！！"
            return cell
        case 6:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "RecommendTableCollectionView", for: indexPath)as? RecommendTableCollectionView else {return UITableViewCell()}
            return cell
        case 7:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "AllItemTableViewCell", for: indexPath)as? AllItemTableViewCell else{return UITableViewCell()}
            cell.allItemLabel.text = "全てをみ見る＞"
            return cell
        case 8 :
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContentsTableViewCell", for: indexPath)as? ContentsTableViewCell else{return UITableViewCell()}
            cell.contentsLabel.text = "NEW ITEM！！"
            return cell
        case 9:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewItemTableViewCell", for: indexPath)as? NewItemTableViewCell else {return UITableViewCell()}
            cell.explanationLabel.text = "この夏おすすめのアイテム！！"
            cell.dayLabel.text = "2020年８月26日"
            return cell
            
        default:
            return UITableViewCell()
        }
    }
}
extension ShopingMainTableView:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        delegate?.selectedRow(indexpath: indexPath)
    }
}
extension ShopingMainTableView:SearchTableViewCellDelegate{
    func searchBarShouldBeginEditing() {
        delegate?.searchBarShouldBeginEditing()
    }
    
    func searchBarShouldEndEditing() {
        delegate?.searchBarShouldEndEditing()
    }
}
extension ShopingMainTableView:ContenrtsTableCollectionViewCellDelegate{
    func selectedCollectionView(indexpath: IndexPath) {
        delegate?.selectedCollectionView(indexpath: indexpath)
    }
}


// MARK: - method
extension ShopingMainTableView {
    func tableViewSet(){
        loadTableViewCellFromXib(tableView: shopingTableView, cellName: "SearchTableViewCell")
        loadTableViewCellFromXib(tableView: shopingTableView, cellName: "BigImageTableViewCell")
        loadTableViewCellFromXib(tableView: shopingTableView, cellName: "ContentsTableViewCell")
        loadTableViewCellFromXib(tableView: shopingTableView, cellName: "ContenrtsTableCollectionViewCell")
        loadTableViewCellFromXib(tableView: shopingTableView, cellName: "AllItemTableViewCell")
        loadTableViewCellFromXib(tableView: shopingTableView, cellName: "RecommendTableCollectionView")
        loadTableViewCellFromXib(tableView: shopingTableView, cellName: "NewItemTableViewCell")
        
    }
}

