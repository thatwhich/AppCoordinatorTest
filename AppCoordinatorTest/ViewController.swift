//
//  ViewController.swift
//  AppCoordinatorTest
//
//  Created by Alex Folgin on 19.05.22.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
  
  @IBOutlet var lbl: UILabel!
  
  weak var coordinator: MainCoordinator?
  var tmpStr = "main"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  @IBAction func showTemp1(_ sender: Any) {
    coordinator?.temp1VC()
  }
  
  @IBAction func showTemp2(_ sender: Any) {
    coordinator?.temp2VC()
  }
  
  @IBAction func showBuy(_ sender: Any) {
    coordinator?.buyVC()
    
    
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    lbl.text = tmpStr
  }
  
}

