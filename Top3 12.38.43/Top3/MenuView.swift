//
//  MenuView.swift
//  Top3
//
//  Created by 酒井典昭 on 2019/12/16.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol MenuViewDelegate: NSObjectProtocol{
    func selectedRow(indexPath:IndexPath)
    
}

extension MenuViewDelegate {
    
}
// MARK: - Property
class MenuView: BaseView {
    weak var delegate: MenuViewDelegate? = nil
    @IBOutlet weak var menuTableView: UITableView!
    var labelsNum :[String] =  ["HOME","メニュー","クーポン","スタンプ","スキンアイテム","来店履歴","新着ニュース","アクセス","9","10"]
    
}

// MARK: - Life cycle
extension MenuView {
    override func awakeFromNib() {
        super.awakeFromNib()
        menuTableView.dataSource = self
        menuTableView.delegate = self
        loadTableViewCellFromXib(tableView: menuTableView, cellName: "MenuTableViewCell")
        
    }
}

// MARK: - Protocol
extension MenuView : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labelsNum.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell : MenuTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath)as? MenuTableViewCell else{return UITableViewCell()}
        cell.menuLabel.text = labelsNum[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        delegate?.selectedRow(indexPath: indexPath)
    }
    
    
}

// MARK: - method
extension MenuView {
//    func lebelSet(){
//        switch IndexPath.row{
//        case 1:
//            self.labelsNum.text
//        default:
//            
//        }
//    }
}

