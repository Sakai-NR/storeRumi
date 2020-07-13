//
//  HeaderView.swift
//  Top3
//
//  Created by 酒井典昭 on 2019/12/16.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol HeaderViewDelegate: NSObjectProtocol{
    func menuButton(_ sender: UIButton)
    func memberButton(_ sender: UIButton)
    func BackButton(_ sender: UIButton)
}

extension HeaderViewDelegate {
    
}
// MARK: - Property
class HeaderView: BaseView {
    weak var delegate: HeaderViewDelegate? = nil
    @IBOutlet weak var hiddenMemberButton: UIButton!
    
    @IBAction func menuButton(_ sender: UIButton) {
        delegate?.menuButton(sender)
    }
    @IBAction func memberButton(_ sender: UIButton) {
        delegate?.memberButton(sender)
    }
    @IBOutlet weak var storeLabbel: UILabel!
    var storeName = String("RUMINAS")
    
    @IBAction func BackButton(_ sender: UIButton) {
        delegate?.BackButton(sender)
    }
    @IBOutlet weak var backButtonOutlet: UIButton!
    @IBOutlet weak var menuButtonOutlet: UIButton!
}

// MARK: - Life cycle
extension HeaderView {
    override func awakeFromNib() {
        super.awakeFromNib()
        updataLabel()
    }
}

// MARK: - Protocol
extension HeaderView {
    
}

// MARK: - method
extension HeaderView {
    func updataLabel(){
        self.storeLabbel.text = storeName
    }
    
}

