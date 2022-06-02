//
//  ViewController.swift
//  PassingDataDemo
//
//  Created by Arnav Agarwal on 02/05/21.
//

import UIKit

protocol SendDataDelegate {
   func sendData(text:String)
    func movetoNext()
    func addNewSubview()
}


class ViewController: UIViewController, SendDataDelegate {
    
    func addNewSubview() {
        if let resultVC = (storyboard?.instantiateViewController(identifier: "screen2Controller"))! as Screen2Controller? {
            resultVC.view.backgroundColor = UIColor.clear
//            resultVC.delegare = self
            resultVC.view.frame = self.view.bounds
            customView = resultVC.view
            
            let transition = CATransition()
                            transition.duration = 0.5
                        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
                        transition.type = CATransitionType.moveIn
                        transition.subtype = CATransitionSubtype.fromTop
            
            view.layer.add(transition, forKey: nil)
            self.view.addSubview(self.customView!)
            self.addChild(resultVC)
            
        }
    }
    
    
    func movetoNext() {
        
        if let resultVC = (storyboard?.instantiateViewController(identifier: "screen2Controller"))! as Screen2Controller? {
            let ucLogObject = UCLogObject()
            print("app info2 = \(ucLogObject.getClientId())")
            
            print("get app flag = \(EventLogManager.shared.getDefualtProp())")
            
            resultVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            
            navigationController?.pushViewController(resultVC, animated: false)
            
        }
    }
    
    
    var customView: UIView? = nil
    
    func sendData(text: String) {
        print("got data")
//        self.willMove(toParent: nil)
        self.customView!.removeFromSuperview()
//        self.removeFromParent()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonClicked(_ sender: UIButton) {
        
        let ucLogObject = UCLogObject()
        print("app info1 = \(ucLogObject.getClientId())")
        
        if let resultVC = (storyboard?.instantiateViewController(identifier: "dummyController"))! as DummyController? {
            resultVC.dummyString = "Hello"
            // 1. this is simply pushing the new controller on top of this one. Hence, push or present will both work in it.
//            navigationController?.pushViewController(resultVC, animated: true)
            
            // 2. If this is done, then new controller(shown as modally) cannot present or push new controllers using navigation controller.
//            self.present(resultVC, animated: true, completion: {
//                print("yes. done")
//            })
            
            // 3. setting new controller as the root of the navigation controller rather than the current controller. In this way , the new controller (shown as modally ) will be able to have a navigation stack of its own.
//            resultVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
//            let nav = UINavigationController(rootViewController: resultVC )
//            nav.modalPresentationStyle = UIModalPresentationStyle.fullScreen
//            self.present(nav, animated:true, completion:nil)
//
            
        
    
            resultVC.view.backgroundColor = UIColor.clear
            resultVC.delegare = self
            resultVC.view.frame = self.view.bounds
            customView = resultVC.view
            
            let transition = CATransition()
                            transition.duration = 0.5
                        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
                        transition.type = CATransitionType.moveIn
                        transition.subtype = CATransitionSubtype.fromTop
            
            view.layer.add(transition, forKey: nil)
            self.view.addSubview(self.customView!)
            self.addChild(resultVC)
            
//            UIView.transition(with: self.view, duration: 0.25, options: [.transitionCrossDissolve], animations: {
//                self.view.addSubview(self.customView!)
//                self.addChild(resultVC)
////              self.view.addSubview(view)
//            }, completion: nil)
            
            
//            resultVC.didMove(toParent: self)
            
//            self.present(resultVC, animated: true, completion: nil)
            
            
            
            
//            self.window.backgroundColor = UIColor.red;
//            resultVC.view.backgroundColor = UIColor.white.withAlphaComponent(0.5)
//            resultVC.modalPresentationStyle = UIModalPresentationStyle.overFullScreen
            
//            navigationController?.navigationBar.backgroundColor = UIColor.clear
            
//                        resultVC.view.backgroundColor = UIColor.white.withAlphaComponent(0.5)
//                        resultVC.modalPresentationStyle = UIModalPresentationStyle.overFullScreen

            
//            resultVC.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Close", style: .plain, target: resultVC, action: #selector(resultVC.closeView))
//            resultVC.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: resultVC, action: nil)
//
//                let transition = CATransition()
//                transition.duration = 0.5
//            transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
//            transition.type = CATransitionType.moveIn
//            transition.subtype = CATransitionSubtype.fromTop
//                navigationController?.view.layer.add(transition, forKey: nil)
//                navigationController?.present(resultVC, animated: true)
        }
    }
}

