//
//  SampleMainView.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/08/31.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol SampleMainViewDelegate: NSObjectProtocol{
    
}

extension SampleMainViewDelegate {
    
}
// MARK: - Property
class SampleMainView: BaseView {
    weak var delegate: SampleMainViewDelegate? = nil
}

// MARK: - Life cycle
extension SampleMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension SampleMainView {
    
}

// MARK: - method
extension SampleMainView {
    
}

