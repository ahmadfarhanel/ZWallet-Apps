//
//  HistoryPresenter.swift
//  History
//
//  Created by MacBook on 25/05/21.
//

import Foundation
import UIKit

protocol HistoryPresenter {
    func loadTransactionThisWeek()
    func loadTransactionThisMonth()
    func showHistory(viewController: UIViewController)
}

