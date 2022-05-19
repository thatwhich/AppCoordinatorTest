//
//  Storyboarded.swift
//  AppCoordinatorTest
//
//  Created by Alex Folgin on 19.05.22.
//

import UIKit

protocol Storyboarded {
  static func instantiate(storyboard: String) -> Self
}

extension Storyboarded where Self: UIViewController {
  static func instantiate(storyboard: String) -> Self {
    let id = String(describing: self)
    let storyboard = UIStoryboard(name: storyboard, bundle: Bundle.main)
    return storyboard.instantiateViewController(withIdentifier: id) as! Self
  }
}
