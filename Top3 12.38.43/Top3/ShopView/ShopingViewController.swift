//
//  ShopingViewController.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/07/21.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class ShopingViewController: BaseViewController {
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var shopingMainTableView: ShopingMainTableView!
    var hideTap : UITapGestureRecognizer = UITapGestureRecognizer()
//    var itemNameLabels : [String] = ["AAA","BBB","CCC","DDD"]
    
}

// MARK: - Life cycle
extension ShopingViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
        setButton()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
}

// MARK: - Protocol
extension ShopingViewController:HeaderViewDelegate{
    func menuButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .slide_push
    }
    
    func memberButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .slide_push
    }
    
    func BackButton(_ sender: UIButton) {
       navigationController?.popViewController(animated: true)
       animatorManager.navigationType = .slide_push
//     let topMainViewController = TopMainViewController()
//        topMainViewController.openMenu()
        
    }
}
extension ShopingViewController:ShopingMainTableViewDelegate{
    func selectedCollectionView(indexpath: IndexPath) {
        switch indexpath.row {
        case 0:
            let itemViewController = ItemViewController()
            transitionViewController(from: self, to: itemViewController)
            brandNameUpdate(index:indexpath.row, itemvc: itemViewController)
//            itemViewController.brandName = itemName[indexpath.row]
            animatorManager.navigationType = .slide_pop
        case 1 :
            let itemViewController = ItemViewController()
            transitionViewController(from: self, to: itemViewController)
            brandNameUpdate(index:indexpath.row, itemvc: itemViewController)
            animatorManager.navigationType = .slide_pop
        default:
            print("3")
        }

    }
    
    func searchBarShouldBeginEditing() {
        hideKeybord()
    }
    
    func searchBarShouldEndEditing() {
        removeTapGesture()
    }
    
    func selectedRow(indexpath: IndexPath) {
        switch indexpath.row {
        case 4:
            let allRankingViewController = AllRankingViewController()
            transitionViewController(from: self, to: allRankingViewController)
            animatorManager.navigationType = .slide_push
            
        default:
            print("2")
            
        }
    }
}


// MARK: - method
extension ShopingViewController {
    func setDelegate(){
        headerView.delegate = self
        shopingMainTableView.delegate = self
        
    }
    func setButton(){
        headerView.backButtonOutlet.isHidden = false
        headerView.menuButtonOutlet.isHidden = true
    }
    func hideKeybord() {
        hideTap = UITapGestureRecognizer(target: self, action: #selector(hideKyeboardTap))
        hideTap.numberOfTapsRequired = 1
        self.view.isUserInteractionEnabled = true
        self.view.addGestureRecognizer(hideTap)
        
    }
    @objc func hideKyeboardTap(recognizer : UITapGestureRecognizer){
        self.view.endEditing(true)
        shopingMainTableView.seachBar.setShowsCancelButton(false, animated: true)
    }
    func removeTapGesture() {
        self.view.removeGestureRecognizer(hideTap)
    }
    
    func brandNameUpdate(index : Int,itemvc : ItemViewController){
        switch index {
        case 0:
            itemvc.brandName = "BrandName0"
        case 1:
            itemvc.brandName = "BrandName1"
        default:
            itemvc.brandName = "BrandName3"

        }
    }
    func itemNameUpdate(){
        
    }
}

