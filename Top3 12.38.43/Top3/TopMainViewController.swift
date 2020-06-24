///Users/sakainoriaki/workspace/Top3/Top3/TopMainViewController.xib
//  TopMainViewController.swift
//  Top3
//
//  Created by 酒井典昭 on 2019/12/16.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class TopMainViewController: BaseViewController {
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var maskView: MaskView!
    @IBOutlet weak var menuView: MenuView!
    @IBOutlet weak var menuViewWidth: NSLayoutConstraint!
    @IBOutlet weak var backView: BackView!
    @IBOutlet weak var backViewWidth: NSLayoutConstraint!
    @IBOutlet weak var backView2: BsckView2!
    @IBOutlet weak var backView2Width: NSLayoutConstraint!
    @IBOutlet weak var storeMenuView: StoreMenuView!
    @IBOutlet weak var storeMenuViewWidth: NSLayoutConstraint!
    
//    ０の数値設定。
    var zero : CGFloat = 0
//    アニメーションタイムの設定。
    var animationTime = 0.3
//    表示する幅の設定。
    var openWidth : CGFloat  = 0.7
    var maskAlpha : CGFloat  = 0.6
    var funllWidth : CGFloat = 1.0
    
}
// MARK: - Life cycle
extension TopMainViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
        closeMenu()
        closeStoreMenu()
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
// MARK: - Protocol
extension TopMainViewController:HeaderViewDelegate{
    func menuButton(_ sender: UIButton) {
        openMenu()
        updataMemuView()
//        openbackTopButton()
        closeMemberButton()
//        closeStoreMenu()
    }
    func memberButton(_ sender: UIButton) {
        closeStoreMenu()
    }
}
extension TopMainViewController:MaskViewDelegate{
    
}
extension TopMainViewController:MenuViewDelegate{
    func selectedRow(indexPath: IndexPath) {
        closeMenu()
        closeAllView()
        switch indexPath.row {
        case 0:
//            openMemberButton()
            closeStoreMenu()
            
        case 1:
            openStoreMenu()
//            openMemberButton()
            
        default:
            closeMenu()
//            openMemberButton()
        }
    }
}
extension TopMainViewController:BackViewDelegate{
    func backButton(_ sender: UIButton) {
        closeMenu()
    }
}
extension TopMainViewController:StoreMenuViewDelegate{
    func didmenuSelect(indexpath: IndexPath) {
//        switch indexpath.row {
//        case 0:
            
//        default:
//
//        }
        
    }
}
//tuikasita
extension TopMainViewController:BsckView2Delegate{
    func backButton2(_ sender: UIButton) {
        closeMenu()
        openMemberButton()
    }
}
// MARK: - method
extension TopMainViewController {
    
    func setDelegate(){
        headerView.delegate = self
        maskView.delegate = self
        menuView.delegate = self
        backView.delegate = self
        backView2.delegate = self
        storeMenuView.delegate = self
    }
    
    func updataMemuView(){
        view.layoutIfNeeded()
        view.updateConstraints()
    }
//AppMenu
    func openMenu(){
        UIView.animate(withDuration: animationTime) {
            self.openMenuViewWidth()
            self.openMaskAlpha()
            self.openbackView2Width()
//            self.openbackTopButton()
        }
    }
    func closeMenu(){
        UIView.animate(withDuration: animationTime) {
            self.closeMenuViewWidth()
            self.closeMaskAlpha()
            self.closebackView2Width()
        }
    }
    
//StoreMenuのアニメーション
    func openStoreMenu(){
        UIView.animate(withDuration: animationTime) {
            self.openStoreMenuWidth()
        }
    }
    func closeStoreMenu(){
        UIView.animate(withDuration: animationTime) {
            self.closeStoreMenuWidth()
        }
    }
    
//   menuWidth
    func closeMenuViewWidth(){
        self.menuViewWidth.constant = WIDTH * zero
        updataMemuView()
    }
    func openMenuViewWidth(){
        self.menuViewWidth.constant = WIDTH * openWidth
        updataMemuView()
    }
//    maskAlpha
    func closeMaskAlpha(){
        self.maskView.alpha = zero
    }
    func openMaskAlpha(){
        self.maskView.alpha = maskAlpha
    }
//  MemberButton
    func closeMemberButton(){
        self.headerView.hiddenMemberButton .isHidden = true
}
    func openMemberButton(){
        self.headerView.hiddenMemberButton .isHidden = false
    }
    
//  backView
    func closebackViewWidht(){
        self.backViewWidth.constant = WIDTH * zero
        updataMemuView()
        
  }
    func closebackTopButton(){
        self.backView.backTopButton.isHidden = true
    }
    func openbackTopButton(){
        self.backView.backTopButton.isHidden = false
    }
    
//    backView2
    func closebackView2Width(){
        self.backView2Width.constant = WIDTH * zero
        updataMemuView()
    }
    func openbackView2Width(){
        self.backView2Width.constant = WIDTH * funllWidth
        updataMemuView()
        self.backView2.alpha = maskAlpha
    }
    
    func hiddenbackView(){
        self.backView2.isHidden = true
    }
    
//storeMenu
//    openStoreMenu
    func openStoreMenuWidth(){
        self.storeMenuViewWidth.constant = WIDTH * funllWidth
        updataMemuView()
    }
//    closeStoreMenu
    func closeStoreMenuWidth(){
        self.storeMenuViewWidth.constant = WIDTH * zero
        updataMemuView()
    }
    
//    cloceAllView
    func closeAllView(){
        closeMenuViewWidth()
        closeStoreMenuWidth()
    }
}

