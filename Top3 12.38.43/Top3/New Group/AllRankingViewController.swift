//
//  AllRankingViewController.swift
//  Top3
//
//  Created by 酒井典昭 on 2020/09/18.
//  Copyright © 2020 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class AllRankingViewController: BaseViewController {
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var allRankingMainView: AllItemTableViewCell!
    
}

// MARK: - Life cycle
extension AllRankingViewController {
    override func loadView() {
        super.loadView()
        setView()
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
extension AllRankingViewController:HeaderViewDelegate {
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
extension AllRankingViewController {
    func setView(){
        headerView.delegate = self
    }
    func setButton(){
    headerView.backButtonOutlet.isHidden = false
    headerView.menuButtonOutlet.isHidden = true
    }
}

