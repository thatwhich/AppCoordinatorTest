//
//  BuyViewController.swift
//  AppCoordinatorTest
//
//  Created by Alex Folgin on 19.05.22.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {

  var complition: ((String) -> ())?
  weak var coordinator: MainCoordinator?
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  @IBAction func passAndBack(_ sender: Any) {
    coordinator?.passToMain(with: "Here some text")
  }
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
