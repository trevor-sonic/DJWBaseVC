//
//  File.swift
//  
//
//  Created by dejaWorks on 27/01/2020.
//

import UIKit

/// Base UIView
open class BaseV: UIView {
    
    var onKill:( ()->Void )?
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        setupUI()
        setConstraints()
    }
    public required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    /// Implement UI init without super
    open func setupUI(){}
    
    /// Implement UI Constraints without super
    open func setConstraints() {}
    
    
    open func kill(){
        removeFromSuperview()
    }
    deinit{ print("deinit \(description)"); onKill?()}
}
