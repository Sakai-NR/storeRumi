//
//  ItemViewController.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/08/31.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class ItemViewController: BaseViewController {
 
    @IBOutlet weak var itemView: ItemTableView!
    @IBOutlet weak var headerView: HeaderView!
    var brandName = ""
    var indexPathRow = 0
//    var itemNameLabels = ""
    var contentsCollectionViewCell = ContentsCollectionViewCell()
}

// MARK: - Life cycle
extension ItemViewController {
    override func loadView() {
        super.loadView()
        setDeleate()
        setButton()

//        itemView.brandName = brandName
//        itemView.itemNameLabels = itemNameLabels
//        uuu()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        itemView.indexPathRow = indexPathRow
    }
}

// MARK: - Protocol
extension ItemViewController:HeaderViewDelegate {
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
        animatorManager.navigationType = .slide_pop
    }
}

// MARK: - method
extension ItemViewController {
    func setDeleate(){
        headerView.delegate = self
    }
    func setButton(){
    headerView.backButtonOutlet.isHidden = false
    headerView.menuButtonOutlet.isHidden = true
    }
    func uuu(){
        contentsCollectionViewCell.brandNameUpdate(names: brandName)
    }

    func brandNameUpdate(index : Int) {
        indexPathRow = index
    }
}

