//
//  HomeViewController.swift
//  Home
//
//  Created by MacBook on 24/05/21.
//

import UIKit
import Core

class HomeViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var dataSource = HomeDataSource()
    
    var presenter: HomePresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setUpTableView()
        self.presenter?.loadProfile()
        self.presenter?.loadTransaction()
    }


    func setUpTableView() {
        self.dataSource.viewController = self
        
        self.tableView.register(UINib(nibName: "DashboardCell", bundle: Bundle(identifier: "com.casestudy.Home")), forCellReuseIdentifier: "DashboardCell")
        self.tableView.register(UINib(nibName: "TransactionCell", bundle: Bundle(identifier: "com.casestudy.Core")), forCellReuseIdentifier: "TransactionCell")
        
        self.tableView.dataSource = self.dataSource
    }

}

extension HomeViewController: DashboardCellDelegate {
    func showAllReceiver() {
        self.presenter?.showReceiver(viewController: self)
    }
    
    func showAllTransaction() {
        self.presenter?.showHistory(viewController: self)
    }
    
    func logout() {
        self.presenter?.logout()
    }
    
}

extension HomeViewController: HomeView {
    func showUserProfileData(userProfile: UserProfileEntity) {
        self.dataSource.userProfile = userProfile
        self.tableView.reloadData()
    }
    
    func showTransactionData(transactions: [TransactionEntity]) {
        self.dataSource.transactions = transactions
        self.tableView.reloadData()
    }

}
