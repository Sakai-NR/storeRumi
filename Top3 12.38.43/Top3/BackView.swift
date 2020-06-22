//
//  BackView.swift
//  Top3
//
//  Created by 酒井典昭 on 2019/12/23.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol BackViewDelegate: NSObjectProtocol{
   func backButton(_ sender: UIButton)
    
}

extension BackViewDelegate {
    
}
// MARK: - Property
class BackView: BaseView {
    weak var delegate: BackViewDelegate? = nil
    
    @IBOutlet weak var backTopButton: UIButton!
    @IBAction func backButton(_ sender: UIButton) {
        delegate?.backButton(sender)
    }
    
    
}


// MARK: - Life cycle
extension BackView {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
}

// MARK: - Protocol
extension BackView {
    
}

// MARK: - method
extension BackView {
    
}

