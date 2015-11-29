//
//  exercises.swift
//  ProgressiveOverload_Draft
//
//  Created by Chris on 11/9/15.
//  Copyright © 2015 Chris. All rights reserved.
//

import Foundation

var progressPlan = [[0,1,2],[1,0,2],[2,1,0]]
var date = NSDate()


class Exercises{
    let name_ : String
    let musclesUsed_:[String]
    let requiredEquipment_:String
    var goalStats_:[Int] // a triple of Ints for weight, reps and sets; saves performance goals
    var userStats_:[Int] // a triple of Ints for weight, reps and sets; saves actual performance
    var gainOrMaintain_: Bool
    var history_ : [NSDate : (Int,Int)]
    var baseline_ : [(Int,Int)]
    var weightProgression_ : [Int]
    
    init(){
        name_ = "Null"
        requiredEquipment_ = "None"
        musclesUsed_ = ["Zero", "Zilch", "Nada"]
        goalStats_ = [0,0,0]
        userStats_ = [0,0,0]
        gainOrMaintain_ = false
        history_ = [date : (0,0)]
        baseline_ = [(0,0)]
        weightProgression_ = progressPlan[0]
    }
    
    init(name:String, musclesUsed:[String], requiredEquipment:String, goalStats:[Int], myStats:[Int], gainOrMaintain:Bool, history: [NSDate : (Int,Int)], baseline:[(Int,Int)], weightProgression:[Int]){
        name_ = name
        musclesUsed_ = musclesUsed
        requiredEquipment_ = requiredEquipment
        goalStats_ = goalStats
        userStats_ = myStats
        gainOrMaintain_ = gainOrMaintain
        history_ = history
        baseline_ = baseline
        weightProgression_ = weightProgression
    }
    
    func addExercise(newName:String, newMusclesUsed:[String], newRequiredEquipment:String){
        exerciseList.append(
            Exercises(name: newName,
                musclesUsed: newMusclesUsed,
                requiredEquipment: newRequiredEquipment,
                goalStats: [0,0,0],
                myStats: [0,0,0],
                gainOrMaintain : false,
                history : [date : (0,0)],
                baseline : [(0,0)],
                weightProgression : progressPlan[0]
            )
        )
    }
    
    func progression(){}
   
}
    


