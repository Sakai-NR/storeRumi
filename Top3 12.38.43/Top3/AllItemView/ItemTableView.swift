//
//  ItemTableView.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/09/14.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol ItemTableViewDelegate: NSObjectProtocol{
    
}

extension ItemTableViewDelegate {
    
}
// MARK: - Property
class ItemTableView: BaseView {
    weak var delegate: ItemTableViewDelegate? = nil
    @IBOutlet weak var itameTableView: UITableView!
    var brandName = ""
    var itemNameLabels = ""
    var indexPathRow = 0
}

// MARK: - Life cycle
extension ItemTableView {
    override func awakeFromNib() {
        super.awakeFromNib()
        tableViewSet()
        itameTableView.dataSource = self
    }
}

// MARK: - Protocol
extension ItemTableView:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
             guard let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath)as? ItemTableViewCell else {return UITableViewCell()}
                 cell.brandName = brandName
            cell.getIndexPathRow(indexPathRow: indexPathRow)
//                 cell.itemNameLabels = itemNameLabels
                   return cell
        default:
            return UITableViewCell()
        }
    }
}

// MARK: - method
extension ItemTableView {
    func tableViewSet(){
        loadTableViewCellFromXib(tableView: itameTableView, cellName: "ItemTableViewCell")
    }
}

