//
//  Coordinator.swift
//  AppCoordinatorTest
//
//  Created by Alex Folgin on 19.05.22.
//

import UIKit

protocol Coordinator {
  var childCoordinators: [Coordinator] { get set }
  var navigationController: UINavigationController { get set }
  func start()
}
