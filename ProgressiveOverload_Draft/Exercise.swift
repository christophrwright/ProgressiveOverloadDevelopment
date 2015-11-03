class Exercize{
    var name:String

    var weight:Int
    var reps:Int                 //number of iterations of the action per cycle
    var sets:Int                 //number of cycles of this exercize per workout

    var myWeight: Int            //the weight the user managed to use in this iteration
    var mySets: Int
    var myReps: Int
    var myStats = [myWeight, mySets, myReps] //  [Int]

    var best:[Int]               //PR for reps,sets,amount,duration

    var description:String
    var requiredEquipment:String

    var level = myWeight * mySets * myReps
    var history:[NSDate: myStats]   //a dictionary, pairing date of exercize with a list of reps, sets, amount, duration, and notes

    var musclesUsed: [String]
    var exerciseType: String

// dont need this right now
    var duration:NSTimer         //how long it takes to do a rep or cycle of the exercize
    var notes:String             // editable text string
    var dateLastDone:NSDate

    //a bunch of get and set functions, and the progression function that calculates the next step for the function based on past performance

    //
    func calculateLevel (weight:Int, sets:Int, reps:Int) {
        return weight * sets * reps
    }

    /*/ this would become the progress rating
    // this is going to be the
    func adjustProgress () {

    }

    // on buttonPress, start timer
    // on saveAndGoToNext, stop timer
    func timeSession () {

    }*/

    // compare level of current session with best level
    func setBest () {
        if (calculateLevel(best[0], best[1], best[2])) > (calculateLevel(myStats[0], myStats[1], myStats[2])){
            for (int i =0; i<3; i++){
                best[i] = myStats[i]
            }
        }
    }

    // save notes by including an editable text box


    //
    func setSessionStats () {
        // get today's datetime, and save the myStats
        let dateTime = NSDateFormatter()
        dateTime.dateStyle = NSDateFormatterStyle.FullStyle
        dateTime.timeStyle = .MediumStyle
        var dateTime = NSDate()
        history = [dateTime: myStats]
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
/*
class Routine{
    var nameOfRoutine:String
    var exercizesInRoutine:[Exercize]

    func addExercize()
    func removeExercize()
    func nameRoutine()
}

class userProfile{
    var userName:String
    var age:Int
    var gender:String
    var activityLevel:String      //We probably want to include some background info on these users so that we can have a more accurate progression
    var height:Int
    var weight:Int
    var bodyType:[String]        //ectomorph, mesomorph, endomorph. I dunno if this is important when builing a fitness plan, but it might be relevant
    var routines[Exercize]
    var history[NSDate:[Exercize]]
}
*/
