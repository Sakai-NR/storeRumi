//
//  StoreMenuView.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/06/10.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol StoreMenuViewDelegate: NSObjectProtocol{
    func didmenuSelect(indexpath:IndexPath)
}

extension StoreMenuViewDelegate {
    
}
// MARK: - Property
class StoreMenuView: BaseView {
    weak var delegate: StoreMenuViewDelegate? = nil
    var menuList : [String] = ["MenuName0","MenuName1","MenuName2","MenuName3","MenuName4","MenuName5","MenuName6","MenuName7","MenuName8","MenuName9","MenuName10"]
    var menuPrice : [String] = ["￥1,000","￥2,000","￥3,000","￥4,000","￥5,000","￥6,000","￥7,000","￥8,000","￥9,000","￥10,000","￥11,000"]
    @IBOutlet weak var storeMenuTableView: UITableView!
}

// MARK: - Life cycle
extension StoreMenuView {
    override func awakeFromNib() {
        super.awakeFromNib()
        loadTableViewCellFromXib(tableView: storeMenuTableView, cellName: "StoreMenuTableViewCell")
        storeMenuTableView.dataSource = self
        storeMenuTableView.delegate = self
    }
}

// MARK: - Protocol
extension StoreMenuView:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell : StoreMenuTableViewCell = storeMenuTableView.dequeueReusableCell(withIdentifier: "StoreMenuTableViewCell", for: indexPath)as? StoreMenuTableViewCell else {return StoreMenuTableViewCell()}
        cell.menuName.text = menuList[indexPath.row]
        cell.menuPricelabel.text = menuPrice[indexPath.row]
        return cell
    }
}
extension StoreMenuView:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        delegate?.didmenuSelect(indexpath: indexPath)
    }
}

// MARK: - method
extension StoreMenuView {
    
}

