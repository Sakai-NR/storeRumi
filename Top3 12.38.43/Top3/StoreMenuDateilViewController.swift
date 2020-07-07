//
//  StoreMenuDateilViewController.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/07/06.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class StoreMenuDateilViewController: BaseViewController {
    @IBOutlet weak var mainView: StoreMenuDetailsView!
    @IBOutlet weak var headerView: HeaderView!
        var menuDetailName =  ""
}

// MARK: - Life cycle
extension StoreMenuDateilViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
        setHeaderView()
        DetailsUpData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension StoreMenuDateilViewController:HeaderViewDelegate {
    func menuButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .slide_pop
    }

    func memberButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: false)
        animatorManager.navigationType = .slide_pop
    }

    func BackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .slide_pop

    }
    
    
}

// MARK: - method
extension StoreMenuDateilViewController {
    func setDelegate(){
        headerView.delegate = self
    }
    func setHeaderView(){
        headerView.backButtonOutlet.isHidden = false
        headerView.menuButtonOutlet.isHidden = true
    }
    
    func DetailsUpData(){
        mainView.detailViewUpdata(name:menuDetailName)
    }
    
}

