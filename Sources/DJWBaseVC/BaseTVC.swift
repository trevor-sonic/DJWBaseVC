//
//  BaseTVC.swift
//  
//
//  Created by dejaWorks on 15/06/2020.
//

import UIKit

open class BaseTVC: UITableViewController {
    
    public override init(style: UITableView.Style) {
        super.init(style: style)
        setup()
    }
    required public init?(coder: NSCoder) { fatalError("init(coder:)") }
    
    /// implement without super
    open func setup(){}
    
    open func addVC(on parentVC:UIViewController){
        parentVC.addChild(self)
        self.didMove(toParent: parentVC)
    }
    open func addV(on parentV:UIView){
        parentV.addSubview(self.tableView)
    }
    open func addVCWithV(on parentVC:UIViewController){
        addVC(on: parentVC)
        addV(on: parentVC.view)
    }
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
    
    var onKill:( ()->Void )?
    deinit{ print("deinit \(description)"); onKill?()}
}
