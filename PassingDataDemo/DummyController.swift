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
    
}
