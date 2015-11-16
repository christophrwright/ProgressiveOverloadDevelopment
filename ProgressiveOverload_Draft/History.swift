//
//  History.swift
//  ProgressiveOverload_Draft
//
//  Created by uics7 on 11/16/15.
//  Copyright (c) 2015 Chris. All rights reserved.
//

import Foundation

class History {
    var myhistory = ["ExerciseName": [NSDate(), [0,0,0]]]
    
    
    //needs to take actual exercise name and [sets/reps/weights] as arguments
    func updateHistory(ExerciseName: String, userdata: [Int]) {
        myhistory[ExerciseName] = [NSDate(), userdata]
        //implement code to write current [sets,reps,weights] to csv here
    }

}