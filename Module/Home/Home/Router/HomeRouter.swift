//
//  HomeRouter.swift
//  Home
//
//  Created by MacBook on 24/05/21.
//

import Foundation
import UIKit

protocol HomeRouter {
    func navigateToHistory(viewController: UIViewController)
    func navigateToReceiver(viewController: UIViewController)
    func navigateTologin()
}
