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
    @IBOutlet weak var storeMenuDatailsView: StoreMenuDetailsView!
    @IBOutlet weak var storeMenuDatailsWidth: NSLayoutConstraint!
    
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
        closeStoreMenuDetails()
        closeBuckButton()
       
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
        updataView()
//        openbackTopButton()
        closeMemberButton()
//        closeStoreMenu()
    }
    func memberButton(_ sender: UIButton) {
        closeStoreMenu()
    }
    func BackButton(_ sender: UIButton) {
        closeStoreMenuDetails()
        openStoreMenu()
        closeBuckButton()
        openMenuButton()
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
            closeStoreMenu()
        case 1:
            openStoreMenu()
        default:
            closeMenu()
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
        storeMenuDatailsUpdata(index: indexpath.row)
        openBackButton()
        closeMenuButton()
        closeStoreMenu()
        switch indexpath.row {
        case 0:
            openStoreMenuDetails()
        case 1:
            openStoreMenuDetails()
        case 2:
            openStoreMenuDetails()
        case 3:
            openStoreMenuDetails()
        case 4:
            openStoreMenuDetails()
        case 5:
            openStoreMenuDetails()
        case 6:
            openStoreMenuDetails()
        default:
            openStoreMenuDetails()

        }
        
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
//    Viewのアップデート
    func updataView(){
        view.layoutIfNeeded()
        view.updateConstraints()
    }
//MainMenu
//    MainMenuOpen
    func openMenu(){
        UIView.animate(withDuration: animationTime) {
            self.openMenuViewWidth()
            self.openMaskAlpha()
            self.openbackView2Width()
//            self.openbackTopButton()
        }
    }
//    MainMenuClose
    func closeMenu(){
        UIView.animate(withDuration: animationTime) {
            self.closeMenuViewWidth()
            self.closeMaskAlpha()
            self.closebackView2Width()
        }
    }
//   MainMenuWidth
    func closeMenuViewWidth(){
        self.menuViewWidth.constant = WIDTH * zero
        updataView()
    }
    func openMenuViewWidth(){
        self.menuViewWidth.constant = WIDTH * openWidth
        updataView()
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
        updataView()
        
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
        updataView()
    }
    func openbackView2Width(){
        self.backView2Width.constant = WIDTH * funllWidth
        updataView()
        self.backView2.alpha = maskAlpha
    }
    
    func hiddenbackView(){
        self.backView2.isHidden = true
    }
    
//storeMenu
//    openStoreMenu
    func openStoreMenuWidth(){
        self.storeMenuViewWidth.constant = WIDTH * funllWidth
        updataView()
    }
//    closeStoreMenu
    func closeStoreMenuWidth(){
        self.storeMenuViewWidth.constant = WIDTH * zero
        updataView()
    }
//    StoreMenuのアニメーション
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
    
//StoreMenuDetails
//    openStoreMenuDetails
    func openStoreMenuDatailsWidth(){
        self.storeMenuDatailsWidth.constant = WIDTH * funllWidth
        updataView()
    }
    func closeStoreMenuDatailsWidth(){
        self.storeMenuDatailsWidth.constant = WIDTH * zero
        updataView()
    }
//    OpenStoreMenuDatailsAnimation
    func openStoreMenuDetails(){
        UIView.animate(withDuration: animationTime) {
            self.openStoreMenuDatailsWidth()
        }
    }
//    CloseStoreMenuDatailsAnimation
    func closeStoreMenuDetails(){
        UIView.animate(withDuration: animationTime) {
            self.closeStoreMenuDatailsWidth()
        }
    }
//    storeMenuDatailsUpdata
    func storeMenuDatailsUpdata(index : Int){
       switch index {
       case 0 :
        self.storeMenuDatailsView.menuDatailName.text = "MenuName0"
       case 1:
          self.storeMenuDatailsView.menuDatailName.text = "MenuName1"
       case 2:
          self.storeMenuDatailsView.menuDatailName.text = "MenuName2"
       case 3:
          self.storeMenuDatailsView.menuDatailName.text = "MenuName3"
       case 4:
          self.storeMenuDatailsView.menuDatailName.text = "MenuName4"
       case 5 :
        self.storeMenuDatailsView.menuDatailName.text = "MenuName5"
       case 6 :
        self.storeMenuDatailsView.menuDatailName.text = "MenuName6"
       case 7 :
        self.storeMenuDatailsView.menuDatailName.text = "MenuName7"
       case 8 :
        self.storeMenuDatailsView.menuDatailName.text = "MenuName8"
       case 9:
       self.storeMenuDatailsView.menuDatailName.text = "MenuName9"
       case 10 :
        self.storeMenuDatailsView.menuDatailName.text = "MenuName10"
       default:
           self.storeMenuDatailsView.menuDatailName.text = "MenuName11"
        }
    }
//    BuckbottonOutlet
    func openBackButton(){
        headerView.backButtonOutlet.isHidden = false
    }
    func closeBuckButton(){
        headerView.backButtonOutlet.isHidden = true
    }
//   MenuButtonOutlet
    func openMenuButton(){
        headerView.menuButtonOutlet.isHidden = false
    }
    func closeMenuButton(){
        headerView.menuButtonOutlet.isHidden = true
    }
    
//    cloceAllView
    func closeAllView(){
        closeMenuViewWidth()
        closeStoreMenuWidth()
        closeStoreMenuDetails()
    }
}

