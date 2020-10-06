//
//  AllRankingMainView.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/09/18.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol AllRankingMainViewDelegate: NSObjectProtocol{
    
}

extension AllRankingMainViewDelegate {
    
}
// MARK: - Property
class AllRankingMainView: BaseView {
    weak var delegate: AllRankingMainViewDelegate? = nil
    @IBOutlet weak var allRankingTableView: UITableView!
}

// MARK: - Life cycle
extension AllRankingMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setTableview()
    }
}

// MARK: - Protocol
extension AllRankingMainView : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AllRankingTableViewCell", for: indexPath)as? AllRankingTableViewCell else {return UITableViewCell()}
        return cell
    }
}

// MARK: - method
extension AllRankingMainView {
    func setTableview(){
        allRankingTableView.dataSource = self
        loadTableViewCellFromXib(tableView: allRankingTableView, cellName: "AllRankingTableViewCell")
    }
    
}

