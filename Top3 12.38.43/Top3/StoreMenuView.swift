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
    var menuList : [String] = ["MenuName","MenuName","MenuName","MenuName","MenuName","MenuName","MenuName","MenuName","MenuName","MenuName","MenuName"]
    @IBOutlet weak var storeMenuTableView: UITableView!
}

// MARK: - Life cycle
extension StoreMenuView {
    override func awakeFromNib() {
        super.awakeFromNib()
        loadTableViewCellFromXib(tableView: storeMenuTableView, cellName: "StoreMenuTableViewCell")
        storeMenuTableView.dataSource = self
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

