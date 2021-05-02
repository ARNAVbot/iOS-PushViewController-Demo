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
            navigationController?.pushViewController(resultVC, animated: true)
        }
    }
}

