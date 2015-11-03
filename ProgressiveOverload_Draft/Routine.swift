class Routine{
    var exercise:Exercise
    var routine:[Exercise]
    var muscleGroups:[String:Int]
    var mainMuscleGroup:String
    var numberOfTimesPerformed: Int // Used to determine if it's time to change up routine.


    // given a list of muscle groups used in routine, return dominant muscle group
    func setMuscleGroup(routine){
        type = routine.muscleGroup.append(exercise.muscleGroup)
        rouine.mainMuscleGroup = type
    }


    func addToRoutine(ex:Exercise){
        routine.append(ex)
        if(muscleGroups[ex.muscleUsed]){
            muscleGroups.updateValue[ex.muscleUsed +1] = muscleGroups[ex.muscleUsed] + 1
        } else {
            muscleGroups[ex.muscleUsed : 1]
        }
    }

    func manuallyAdjustRoutine(ex1:Exercise, ex2:Exercise){

    }

    // given routine.musclegroup, show alternate routine with same muscle group
    func reccommendAlternateRoutine(routine){

    }

    func substituteExercise(ex:Exercise){
        ex.musclesUsed
        return 
    }

}
