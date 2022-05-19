//
//  MainCoordinator.swift
//  AppCoordinatorTest
//
//  Created by Alex Folgin on 19.05.22.
//

import UIKit

class MainCoordinator: Coordinator {
  var childCoordinators = [Coordinator]()
  var navigationController: UINavigationController
  
  init(navigationController: UINavigationController){
    self.navigationController = navigationController
  }
  
  func start() {
    let vc = ViewController.instantiate(storyboard: "Main")
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: false)
  }
  
  func temp1VC(){
    let vc = Temp1ViewController.instantiate(storyboard: "Main")
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: true)
  }
  
  func temp2VC(){
    let vc = Temp2ViewController.instantiate(storyboard: "Main")
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: true)
  }
  
  func buyVC() {
    let vc = BuyViewController.instantiate(storyboard: "Buy")
    vc.coordinator = self
    vc.complition = { [weak self] txt in
      print(txt)
    }
    navigationController.pushViewController(vc, animated: true)
  }
  
  func passToMain(with str: String){
    let vc = ViewController.instantiate(storyboard: "Main")
    vc.coordinator = self
    vc.tmpStr = str
    navigationController.pushViewController(vc, animated: true)
  }
  
}
