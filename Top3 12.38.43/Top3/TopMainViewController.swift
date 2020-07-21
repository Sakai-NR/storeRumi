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
    @IBOutlet weak var storeCouponView: StoreCouponTableViewController!
    @IBOutlet weak var storeCouponViewWidth: NSLayoutConstraint!
    
   
    
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
        closeStoreCouponView()
       
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
//        closeMemberButton()
//        closeStoreMenu()
    }
    func memberButton(_ sender: UIButton) {
        closeStoreMenu()
    }
    func BackButton(_ sender: UIButton) {
//        closeStoreMenuDetails()
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
        case 2 :
            openStoreCouponView()
//        case 3:
            
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
        let storeMenuDateilViewController = StoreMenuDateilViewController()
        storeMenuDatailsUpdata(index: indexpath.row,vc: storeMenuDateilViewController)
        transitionViewController(from: self, to: storeMenuDateilViewController)
        animatorManager.navigationType = .slide_push
//        openBackButton()
//        closeMenuButton()
//        closeStoreMenu()
//        closeStoreMenuWidth()
//        switch indexpath.row {
//        case 0:
//            openStoreMenuDetails()
//        case 1:
//            openStoreMenuDetails()
//        case 2:
//            openStoreMenuDetails()
//        case 3:
//            openStoreMenuDetails()
//        case 4:
//            openStoreMenuDetails()
//        case 5:
//            openStoreMenuDetails()
//        case 6:
//            openStoreMenuDetails()
//        default:
//            openStoreMenuDetails()

        }
   }
extension TopMainViewController:StoreCouponTableViewControllerDelegate{
    func selectedCoupon(indexpath: IndexPath) {
    let storeCouponViewController = StoreCouponViewController()
        transitionViewController(from: self, to: storeCouponViewController)
        animatorManager.navigationType = .slide_push
        storeCouponDetailUpdata(index:indexpath.row,vc:storeCouponViewController)
        
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
        storeCouponView.delegate = self
        
        
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
    func storeMenuDatailsUpdata(index : Int, vc : StoreMenuDateilViewController){
       switch index {
       case 0 :
          vc.menuDetailName = "MenuName0"
       case 1:
          vc.menuDetailName = "MenuName1"
       case 2:
          vc.menuDetailName = "MenuName2"
       case 3:
          vc.menuDetailName = "MenuName3"
       case 4:
          vc.menuDetailName = "MenuName4"
       case 5 :
          vc.menuDetailName = "MenuName5"
       case 6 :
          vc.menuDetailName = "MenuName6"
       case 7 :
          vc.menuDetailName = "MenuName7"
       case 8 :
          vc.menuDetailName = "MenuName8"
       case 9:
          vc.menuDetailName = "MenuName9"
       case 10 :
          vc.menuDetailName = "MenuName10"
       default:
           vc.menuDetailName = "MenuName11"
        }
    }
//    StoreMenu
//    OpenStoreCoupon
    func openStoreCouponWidth(){
        self.storeCouponViewWidth.constant = WIDTH * funllWidth
        updataView()
    }
//    closeStoreCouponWidrh
    func closeStoreCouponWidth(){
        self.storeCouponViewWidth.constant = WIDTH * zero
        updataView()
    }
//
    func openStoreCouponView(){
        UIView.animate(withDuration: animationTime) {
            self.openStoreCouponWidth()
        }
    }
    func closeStoreCouponView(){
        UIView.animate(withDuration: animationTime) {
            self.closeStoreCouponWidth()
        }
    }
//    StoreCouponDetail
    func storeCouponDetailUpdata(index:Int,vc:StoreCouponViewController){
        switch index {
        case 0:
            vc.coupnNameLabel = "クーポン１"
        case 1:
            vc.coupnNameLabel = "クーポン2"
        case 2:
            vc.coupnNameLabel = "クーポン3"
        default:
            vc.coupnNameLabel = "クーポン4"
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
        closeStoreCouponWidth()
    }
}

