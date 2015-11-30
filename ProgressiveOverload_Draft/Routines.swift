//
//  routines.swift
//  ProgressiveOverload_Draft
//
//  Created by Chris on 11/16/15.
//  Copyright © 2015 Chris. All rights reserved.
//

import Foundation

class Routines{
    var name_ : String
    var routine_ = [Exercises]()
    
    init(name:String, routine:[Exercises]){
        name_ = name
        routine_ = routine
    }
    
    func changeName(name:String){
        self.name_ = name
    }
    
}