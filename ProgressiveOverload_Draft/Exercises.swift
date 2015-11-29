//
//  exercises.swift
//  ProgressiveOverload_Draft
//
//  Created by Chris on 11/9/15.
//  Copyright © 2015 Chris. All rights reserved.
//

import Foundation


class Exercises{
    let name_ : String
    let musclesUsed_:[String]
    let requiredEquipment_:String
    var goalStats_:[Int] // a triple of Ints for weight, reps and sets; saves performance goals
    var userStats_:[Int] // a triple of Ints for weight, reps and sets; saves actual performance
    
    init(){
        name_ = "Null"
        requiredEquipment_ = "None"
        musclesUsed_ = ["Zero", "Zilch", "Nada"]
        goalStats_ = [0,0,0]
        userStats_ = [0,0,0]
    }
    
    init(name:String, musclesUsed:[String], requiredEquipment:String, goalStats:[Int], myStats:[Int]){
        name_ = name
        musclesUsed_ = musclesUsed
        requiredEquipment_ = requiredEquipment
        goalStats_ = goalStats
        userStats_ = myStats
    }
    
    func addExercise(newName:String, newMusclesUsed:[String], newRequiredEquipment:String){
        exerciseList.append(
            Exercises(name: newName,
                musclesUsed: newMusclesUsed,
                requiredEquipment: newRequiredEquipment,
                goalStats: [0,0,0],
                myStats: [0,0,0]
            )
        )
    }
    
    func progression(){}
   
}
    


