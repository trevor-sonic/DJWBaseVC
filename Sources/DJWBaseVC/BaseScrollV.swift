//
//  BaseScrollV.swift
//  
//
//  Created by dejaWorks on 28/04/2020.
//

import UIKit

open class BaseScrollV: UIScrollView {
    
    var onKill:( ()->Void )?
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        setupUI()
        setConstraints()
    }
    
    required public init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    /// Implement UI init without super
    open func setupUI(){}
    
    /// Implement UI Constraints without super
    open func setConstraints() {}
    
    
    open func kill(){
        removeFromSuperview()
    }
    deinit{ print("deinit \(description)"); onKill?()}
    
//    override open func touchesShouldCancel(in view: UIView) -> Bool {
//        
////           if view is UIControl
////               && !(view is UITextInput)
////               && !(view is UISlider)
////               && !(view is UISwitch) {
////               return true
////           }
//
//           return super.touchesShouldCancel(in: view)
//       }
}
