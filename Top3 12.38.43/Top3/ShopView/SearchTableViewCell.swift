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
    @IBOutlet weak var shopSarchBar: UISearchBar!
}

// MARK: - Life cycle
extension SearchTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.shopSarchBar.endEditing(true)
        shopSarchBar.delegate = self
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
//        print("end searching --> Close Keyboard")
        self.shopSarchBar.endEditing(true)
    }
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        self.shopSarchBar.endEditing(true)
        shopSarchBar.resignFirstResponder()
        return true
    }
    
}

// MARK: - Protocol
extension SearchTableViewCell {
    
}

// MARK: - method
extension SearchTableViewCell {
    
}

