//
//  File.swift
//  
//
//  Created by dejaWorks on 27/01/2020.
//

import UIKit

open class BaseV: UIView {
    
    var onKill:( ()->Void )?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required public init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    /// Implement UI init without super
    open func setupUI(){
        
    }
    open func kill(){
        removeFromSuperview()
    }
    deinit{ print("deinit \(description)"); onKill?()}
}
