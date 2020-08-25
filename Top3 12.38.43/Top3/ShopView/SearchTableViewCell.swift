//
//  SearchTableViewCell.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/07/24.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol SearchTableViewCellDelegate: NSObjectProtocol{
    
}

extension SearchTableViewCellDelegate {
    
}
// MARK: - Property
class SearchTableViewCell: BaseTableViewCell ,UISearchBarDelegate{
    weak var delegate: SearchTableViewCellDelegate? = nil
    @IBOutlet weak var shopSearchBar: UISearchBar!
}

// MARK: - Life cycle
extension SearchTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        shopSearchBar.delegate = self
        shopSearchBar.placeholder = "商品検索"
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
//        print("end searching --> Close Keyboard")
        self.shopSearchBar.endEditing(true)
        shopSearchBar.setShowsCancelButton(false, animated: true)
    }
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar){
        shopSearchBar.setShowsCancelButton(true, animated: true)
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        shopSearchBar.resignFirstResponder()
        shopSearchBar.setShowsCancelButton(false, animated: true)
    }
    
    
}

// MARK: - Protocol
extension SearchTableViewCell {
    
}

// MARK: - method
extension SearchTableViewCell {
    
}

