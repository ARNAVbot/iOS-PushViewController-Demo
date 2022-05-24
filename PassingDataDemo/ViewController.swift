//
//  ViewController.swift
//  PassingDataDemo
//
//  Created by Arnav Agarwal on 02/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonClicked(_ sender: UIButton) {
        
        if let resultVC = (storyboard?.instantiateViewController(identifier: "dummyController"))! as DummyController? {
            resultVC.dummyString = "Hello"
            // 1. this is simply pushing the new controller on top of this one. Hence, push or present will both work in it.
//            navigationController?.pushViewController(resultVC, animated: true)
            
            // 2. If this is done, then new controller(shown as modally) cannot present or push new controllers using navigation controller.
//            self.present(resultVC, animated: true, completion: {
//                print("yes. done")
//            })
            
            // 3. setting new controller as the root of the navigation controller rather than the current controller. In this way , the new controller (shown as modally ) will be able to have a navigation stack of its own.
            let nav = UINavigationController(rootViewController: resultVC )
            self.present(nav, animated:true, completion:nil)
        }
    }
}

