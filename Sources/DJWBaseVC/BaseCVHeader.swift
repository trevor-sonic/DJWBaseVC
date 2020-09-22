//
//  BaseCVHeader.swift
//  
//
//  Created by dejaWorks on 22/09/2020.
//

import UIKit

open class BaseCVHeader: UICollectionReusableView {
    

    // MARK: - init
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
        setConstraints()
    }

    required public init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    // MARK: - Setup
    /// Implement UI init without super
    open func setupUI(){}
    
    /// Implement UI Constraints without super
    open func setConstraints() {}
    
    
}
