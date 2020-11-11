//
//  BaseTVHeader.swift
//  
//
//  Created by dejaWorks on 05/07/2020.
//

import UIKit

/// Base Table View Header Footer View
open class BaseTVHeader: UITableViewHeaderFooterView {
    
    /// ID definition per class
    class var reuseID: String {return "BaseTVHeader"}
    
    
    // MARK: - init
    public override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupUI()
        setConstraints()
    }

    required public init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    // MARK: - Setup
    /// Implement UI init without super
    open func setupUI(){
        if #available(iOS 13.0, *) {
            textLabel?.textColor = UIColor.label
            backgroundColor = .systemGray3
            
        } else {
            backgroundColor = .white
            
        }
    }
    
    /// Implement UI Constraints without super
    open func setConstraints() {}
    
    
}
