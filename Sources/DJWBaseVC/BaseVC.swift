//
//  BaseVC.swift
//  Stage2
//
//  Created by dejaWorks on 02/03/2018.
//  Copyright © 2018 dejaWorks. All rights reserved.
//

import UIKit

public class BaseVC: UIViewController {


    var onKill:( ()->Void )?
    
    override public func loadView() {
        super.loadView()
        //view = UIViewBuilder().build()
    }
    override public func viewDidLoad() {
        super.viewDidLoad()

    }
    func addVC(on parentVC:UIViewController){
        parentVC.addChild(self)
        self.didMove(toParent: parentVC)
    }
    func addV(on parentV:UIView/*, autoFullSnap:Bool = true*/){
        parentV.addSubview(self.view)
//        if autoFullSnap{
//            setConstraintsFull(on: parentV)
//        }
    }
    func addVCWithV(on parentVC:UIViewController/*, autoFullSnap:Bool = true*/){
        addVC(on: parentVC)
        addV(on: parentVC.view/*, autoFullSnap: autoFullSnap*/)
    }
//    func setConstraintsFull(on aView:UIView){
//        self.view.snp.remakeConstraints { make in
//            make.edges.equalTo(aView)
//        }
//    }
    func kill(){
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
