//
//  DummyController.swift
//  PassingDataDemo
//
//  Created by Arnav Agarwal on 02/05/21.
//

import UIKit

class DummyController: UIViewController {

    @IBOutlet weak var textView: UILabel!
    var dummyString : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView?.text = dummyString
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: UIButton) {
        if let resultVC = (storyboard?.instantiateViewController(identifier: "screen2Controller"))! as Screen2Controller? {
//            resultVC.dummyString = "Hello"
            // 1. this will work if this controller is either pushed or if it is shown modally , then this controller is set as the root of the navigation controller. Otherwise, if this controller is simply presented, then the following statement wont work.
            navigationController?.pushViewController(resultVC, animated: true)
            
            // 2. this can be used to present the new controller. But this will work , only if the current controller is pushed onto the existing navigation controller.
//            self.present(resultVC, animated: true, completion: {
//                print("yes. done")
//            })
        }
    }
}
