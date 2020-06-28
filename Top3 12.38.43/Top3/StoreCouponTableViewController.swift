//
//  StoreCouponTableViewController.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/06/26.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol StoreCouponTableViewControllerDelegate: NSObjectProtocol{
    func selectedCoupon(indexpath:IndexPath)
}

extension StoreCouponTableViewControllerDelegate {
    
}
// MARK: - Property
class StoreCouponTableViewController: BaseView {
    weak var delegate: StoreCouponTableViewControllerDelegate? = nil
    @IBOutlet weak var storeCouponTableView: UITableView!
    
    
}

// MARK: - Life cycle
extension StoreCouponTableViewController {
    override func awakeFromNib() {
        super.awakeFromNib()
        loadTableViewCellFromXib(tableView:storeCouponTableView, cellName: "StoreCouponTableViewCell")
        storeCouponTableView.dataSource = self
        storeCouponTableView.delegate = self
    }
}

// MARK: - Protocol
extension StoreCouponTableViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: StoreCouponTableViewCell =  tableView.dequeueReusableCell(withIdentifier: "StoreCouponTableViewCell", for: indexPath)as? StoreCouponTableViewCell else{return UITableViewCell()}
        return cell
    }
}
extension StoreCouponTableViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        delegate?.selectedCoupon(indexpath: indexPath)
    }
}

// MARK: - method
extension StoreCouponTableViewController {
    
}

