//
//  BaseTVCell.swift
//  
//
//  Created by dejaWorks on 18/05/2020.
//

import UIKit

open class BaseTVCell: UITableViewCell {
    
    
    class var reuseID: String {return "BaseTVCell"}
    
    
    // MARK: - init
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
