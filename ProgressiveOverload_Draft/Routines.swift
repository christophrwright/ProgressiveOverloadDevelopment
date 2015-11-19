//
//  routines.swift
//  ProgressiveOverload_Draft
//
//  Created by Chris on 11/16/15.
//  Copyright © 2015 Chris. All rights reserved.
//

import Foundation

class Routines{
    var name : String
    var routine = [Exercises]()
    
    init(newName:String, newRoutine:[Exercises]){
        name = newName
        routine = newRoutine
    }
    
    func changeName(newName:String){
        self.name = newName
    }
}