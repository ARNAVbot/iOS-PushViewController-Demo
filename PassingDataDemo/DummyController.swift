//
//  DummyController.swift
//  PassingDataDemo
//
//  Created by Arnav Agarwal on 02/05/21.
//

import UIKit

class DummyController: UIViewController {
    
    public var delegare: SendDataDelegate? = nil

    @IBOutlet weak var textView: UILabel!
    var dummyString : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView?.text = dummyString
//        self.view.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        // Do any additional setup after loading the view.
    }
    
    @objc func closeView() {
//        let transition = CATransition()
//        transition.duration = 0.5
//        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
//        transition.type = CATransitionType.reveal
//        transition.subtype = CATransitionSubtype.fromBottom
//        navigationController?.view.layer.add(transition, forKey: nil)
//        _ = navigationController?.popViewController(animated: false)
    }
    
    @IBAction func dimissMe(_ sender: UIButton) {
//        dismiss(animated: true, completion: nil)
        print("called and is delegare == nil , check = \(delegare == nil)")
        delegare?.sendData(text: "yo")
    }
    
    @IBAction func addNewsubview(_ sender: UIButton) {
        delegare?.addNewSubview()
    }
    
    @IBAction func button(_ sender: UIButton) {
//        let ucLogObject = UCLogObject()
//        print("app info2 = \(ucLogObject.getClientId())")
        
        
        delegare?.movetoNext()
        
        
//        EventLogManager.shared.setDefaultLogProperties(appFlag: "yolo")
////        let myNavigationController = UINavigationController(rootViewController: self)
//
//        if let resultVC = (storyboard?.instantiateViewController(identifier: "screen2Controller"))! as Screen2Controller? {
////            resultVC.dummyString = "Hello"
//            // 1. this will work if this controller is either pushed or if it is shown modally , then this controller is set as the root of the navigation controller. Otherwise, if this controller is simply presented, then the following statement wont work.
//
//            let ucLogObject = UCLogObject()
//            print("app info2 = \(ucLogObject.getClientId())")
//
//            print("get app flag = \(EventLogManager.shared.getDefualtProp())")
//
//            resultVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
//
//            navigationController?.pushViewController(resultVC, animated: false)
//
//            // 2. this can be used to present the new controller. But this will work , only if the current controller is pushed onto the existing navigation controller.
////            self.present(resultVC, animated: true, completion: {
////                print("yes. done")
////            })
//        }
    }
}
