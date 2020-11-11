//
//  BaseVC.swift
//  Stage2
//
//  Created by dejaWorks on 02/03/2018.
//  Copyright © 2018 dejaWorks. All rights reserved.
//

import UIKit

/// Base UIViewController
open class BaseVC: UIViewController {

    var onKill:( ()->Void )?
    
    override open func loadView() {
        super.loadView()
        //view = UIViewBuilder().build()
    }
    override open func viewDidLoad() {
        super.viewDidLoad()

    }
    open func addVC(on parentVC:UIViewController){
        //self.parentVC = parentVC
        parentVC.addChild(self)
        self.didMove(toParent: parentVC)
    }
    open func addV(on parentV:UIView/*, autoFullSnap:Bool = true*/){
        parentV.addSubview(self.view)
//        if autoFullSnap{
//            setConstraintsFull(on: parentV)
//        }
    }
    open func addVCWithV(on parentVC:UIViewController/*, autoFullSnap:Bool = true*/){
        addVC(on: parentVC)
        addV(on: parentVC.view/*, autoFullSnap: autoFullSnap*/)
    }
//    func setConstraintsFull(on aView:UIView){
//        self.view.snp.remakeConstraints { make in
//            make.edges.equalTo(aView)
//        }
//    }
    open func kill(){
        if let v = view as? BaseV {
            v.kill()
        }else{
            view.removeFromSuperview()
        }
        view = nil
        
        self.willMove(toParent: nil)
        self.removeFromParent()
    }
    deinit{ print("deinit \(description)"); onKill?()}
}
