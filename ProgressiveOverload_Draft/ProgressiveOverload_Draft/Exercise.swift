class Exercise{
    let name:String
    let musclesUsed:[String]
    let equipment:[String]

    var scheduledWeight:Int
    var scheduledReps:Int
    var scheduledSets:Int
    var currentWeight:Int
    var currentReps:Int
    var currentSets:Int

    func init(name, musclesUsed, equipment){}

    func adjustWeight(scheduledWeight, newWeight){
         scheduledWeight = newWeight
    }

    func adjustReps(scheduledReps, newReps){
         scheduledReps = newReps
    }

    func adjustSets(scheduledSets, newSets){
         scheduledSets, = newSets
    }

    func calculateCurrentLevel(currentWeight,currentReps,currentSets){
        return currentWeight * currentReps * currentSets
    }

    func succeededAt(scheduledWeight,scheduledReps,scheduledSets,
                     currentWeight,currentReps,currentSets){
        if (calculateCurrentLevel(currentWeight,  currentReps,  currentSets) >=
            calculateCurrentLevel(scheduledWeight,scheduledReps,scheduledSets)){
            return true
        }
        return false
    }


    func setExerciseType(){
        switch muscleGroup{
            // Legs
            case :
                return "Quadriceps"
            case :
                return "Hamstrings"
            case :
                return "Calves"
            case :
                return "Glutes"
            // Torso
            case :
                return "Chest"
            case :
                return "Back"
            case :
                return "Shoulders"
            case :
                return "Trapezius"
            // Arms
            case :
                return "Triceps"
            case :
                return "Biceps"
            case :
                return "Forearms"
            // Core
            case :
                return "Abs"
            // case :
            //     return ""
            default :
                return "This Should Never Return"
            }
    }

}
