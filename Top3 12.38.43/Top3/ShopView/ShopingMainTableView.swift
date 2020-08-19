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
    
}

extension ShopingMainTableViewDelegate {
    
}
// MARK: - Property
class ShopingMainTableView: BaseView {
    weak var delegate: ShopingMainTableViewDelegate? = nil
    @IBOutlet weak var shopingTableView: UITableView!
}

// MARK: - Life cycle
extension ShopingMainTableView {
    override func awakeFromNib() {
        super.awakeFromNib()
        tableViewSet()
        shopingTableView.dataSource = self
    }
}


// MARK: - Protocol
extension ShopingMainTableView: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath)as? SearchTableViewCell else{return UITableViewCell()}
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
            return cell
        case 4:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContentsTableViewCell", for: indexPath)as? ContentsTableViewCell else {return UITableViewCell()}
            cell.contentsLabel.text = "おすすめの商品！！"
            return cell
            
        default:
            return UITableViewCell()
        }
    }
    
    
}

// MARK: - method
extension ShopingMainTableView {
    func tableViewSet(){
        loadTableViewCellFromXib(tableView: shopingTableView, cellName: "SearchTableViewCell")
        loadTableViewCellFromXib(tableView: shopingTableView, cellName: "BigImageTableViewCell")
        loadTableViewCellFromXib(tableView: shopingTableView, cellName: "ContentsTableViewCell")
        loadTableViewCellFromXib(tableView: shopingTableView, cellName: "ContenrtsTableCollectionViewCell")
    }
}

