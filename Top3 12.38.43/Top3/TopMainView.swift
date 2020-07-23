//
//  TopMainView.swift
//  Top3
//
//  Created by 酒井典昭 on 2019/12/16.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol TopMainViewDelegate: NSObjectProtocol{
    func storeMenuButton(_ sender: UIButton)
    func reservationButton(_ sender: UIButton)
    func couponButton(_ sender: UIButton)
    func stampButton(_ sender: UIButton)
    func shoppingButton(_ sender: UIButton)
    
}

extension TopMainViewDelegate {
    
}
// MARK: - Property
class TopMainView: BaseView {
    weak var delegate: TopMainViewDelegate? = nil
    @IBAction func storeMenuButton(_ sender: UIButton) {
        delegate?.storeMenuButton(sender)
    }
    @IBAction func reservationButton(_ sender: UIButton) {
        delegate?.reservationButton(sender)
    }
    @IBAction func couponButton(_ sender: UIButton) {
        delegate?.couponButton(sender)
    }
    @IBAction func stampButton(_ sender: UIButton) {
        delegate?.stampButton(sender)
    }
    @IBAction func shoppingButton(_ sender: UIButton) {
        delegate?.shoppingButton(sender)
    }
}

// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension TopMainView {
    
}

// MARK: - method
extension TopMainView {
    
}

