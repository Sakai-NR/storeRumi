//
//  StoreMenuDetailsView.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/06/23.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol StoreMenuDetailsViewDelegate: NSObjectProtocol{
    
}

extension StoreMenuDetailsViewDelegate {
    
}
// MARK: - Property
class StoreMenuDetailsView: BaseView {
    weak var delegate: StoreMenuDetailsViewDelegate? = nil

    @IBOutlet weak var menuDatailView: UIView!
    @IBOutlet weak var menuDatailName: UILabel!
    @IBOutlet weak var menuDatailsImageView: UIImageView!
    @IBOutlet weak var menuDatailsLabel: UILabel!

}

// MARK: - Life cycle
extension StoreMenuDetailsView {
    override func awakeFromNib() {
        super.awakeFromNib()
        MenuDatailCornerR()

        
    }
}

// MARK: - Protocol
extension StoreMenuDetailsView {
    
}

// MARK: - method
extension StoreMenuDetailsView {
//menuDetailsView
    //    Viewの角丸
    func MenuDatailCornerR(){
        menuDatailView.layer.cornerRadius = 10
    }
//    
    
}

