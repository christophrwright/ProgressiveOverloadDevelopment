class Plan {
    //custom plan can be filled out by user if they want to make their own routine
    var customPlan = [ ]
    //samplePlan has values filled in, and is an example of a predesigned beginner plan.
    var samplePlan = [Routine.sampleLegs, Routine.sampleBack, Routine.sampleArms]

}

class Routine {
    //prefix sample denotes which plan the routine belongs to
    //each val is a dictionary
    //each entry corresponds to an array of length 3
    //elements of these arrays are [sets, reps, weight]
    //Bodyweight exercises get weight 0 ie [3,10,0]
    var sampleArms = ["Bench Press": [3,5,135],"Pushups": [3,10,0]]
    var sampleLegs = ["Squat": [2,5,200], "Leg Press": [2,12,185]]
    var sampleBack = ["Deadlift": [2,5,225], "Rows": [2,10,135]]

    func addExercise (newExercise:String, repData:Array){
        //currently hardcoded for arms, will fix once code is integrated with UI etc
        sampleArms[newExercise] = [repData]
    }

    func removeExercise (removedExercise:String){
        sampleArms.removeValueForKey(removedExercise)
    }
