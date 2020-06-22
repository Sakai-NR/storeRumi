//
//  BsckView2.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/01/07.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol BsckView2Delegate: NSObjectProtocol{
    func backButton2(_ sender: UIButton)
    
}

extension BsckView2Delegate {
    
}
// MARK: - Property
class BsckView2: BaseView {
    weak var delegate: BsckView2Delegate? = nil
    @IBOutlet weak var backTopButton2: UIButton!
    @IBAction func backButton2(_ sender: UIButton) {
        delegate?.backButton2(sender)
    }
    @IBOutlet var backView2View: UIView!
    
}

// MARK: - Life cycle
extension BsckView2 {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension BsckView2 {
    
}

// MARK: - method
extension BsckView2 {
    
}

