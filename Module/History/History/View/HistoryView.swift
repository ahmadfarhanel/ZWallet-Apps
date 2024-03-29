//
//  HistoryView.swift
//  History
//
//  Created by MacBook on 25/05/21.
//

import Foundation
import Core

protocol HistoryView {
    func showHistoryThisWeek(transactionThisWeek: [TransactionEntity])
    func showHistoryThisMonth(transactionsThisMonth: [TransactionEntity])
}
