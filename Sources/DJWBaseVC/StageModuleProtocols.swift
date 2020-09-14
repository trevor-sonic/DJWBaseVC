//
//  StageModuleProtocols.swift
//  
//
//  Created by dejaWorks on 23/03/2020.
//

import UIKit


/// This is here temporary!
// MARK: - VC
public  protocol StageModuleVC {
    var moduleTitle:String  {get set}
    var moduleColor:UIColor {get set}
    var moduleView:StageModuleV {get}
}


// MARK: - View
public protocol StageModuleV{
    var moduleColor:UIColor {get set}
}

