
class Routine{
    var name:String
    var equipmentRequired:[String]
    var workoutExercises:[Exercise]
    var muscleGroups:[String]
    var scheduledDateAndTime:NSDate

    func init(newName, newScheduledDateAndTime){
        name = newName
        equipment = []
        workoutExercises = []
        muscleGroups = []
        scheduledDateAndTime = newScheduledDateAndTime
    }

    func scheduleWorkoutRoutine(){}

    func skipWorkoutRoutine(){}

    func addExercise(newExercise){
        workoutExercises.append(newExercise)
        muscleGroups.append(newExercise.musclesUsed)
        equipmentRequired.append(newExercise.equipment)
    }

    func removeExercise(newExercise){
        workoutExercises.pop(newExercise)
        muscleGroups.pop(newExercise.musclesUsed)
        equipmentRequired.pop(newExercise.equipment)
    }

    func moveExercisePlaceInRoutine(){}

    func changeRoutineName(){}


}
