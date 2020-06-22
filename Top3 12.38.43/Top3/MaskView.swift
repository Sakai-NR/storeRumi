//
//  MaskView.swift
//  Top3
//
//  Created by 酒井典昭 on 2019/12/16.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol MaskViewDelegate: NSObjectProtocol{
    
}

extension MaskViewDelegate {
    
}
// MARK: - Property
class MaskView: BaseView {
    weak var delegate: MaskViewDelegate? = nil
    @IBOutlet weak var MuskView: UIView!
}


// MARK: - Life cycle
extension MaskView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension MaskView {
    
}

// MARK: - method
extension MaskView {
    
}

