//
//  exercises.swift
//  ProgressiveOverload_Draft
//
//  Created by Chris on 11/9/15.
//  Copyright © 2015 Chris. All rights reserved.
//

import Foundation


class Exercises{
    let name : String
    let requiredEquipment:String
    let musclesUsed:[String]
    var goalStats:[Int] // a triple of Ints for weight, reps and sets; saves performance goals
    var userStats:[Int] // a triple of Ints for weight, reps and sets; saves actual performance
    
    init(){
        name = "Null"
        requiredEquipment = "None"
        musclesUsed = ["Zero", "Zilch", "Nada"]
        goalStats = [0,0,0]
        userStats = [0,0,0]
    }
    
    init(newName:String, newRequiredEquipment:String, newMusclesUsed:[String], newGoalStats:[Int], newMyStats:[Int]){
        name = newName
        requiredEquipment = newRequiredEquipment
        musclesUsed = newMusclesUsed
        goalStats = newGoalStats
        userStats = newMyStats
    }

}