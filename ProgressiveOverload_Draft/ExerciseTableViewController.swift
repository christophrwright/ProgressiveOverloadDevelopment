//
//  ExerciseTableViewController.swift
//  ProgressiveOverload_Draft
//
//  Created by Chris on 11/9/15.
//  Copyright © 2015 Chris. All rights reserved.
//

import UIKit
var indexPath = NSIndexPath()
// have tried replacing with , UITableViewDataSource, UITableViewDelegate
class ExerciseTableViewController: UITableViewController{
    
   @IBOutlet var theTableView: UITableView!
   var subview:ExerciseViewController!

    var listOfExercises:[Exercises] = [
        Exercises(name:"Flat Barbell Bench Press",
            musclesUsed:["Chest"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Flat Dumbbell Bench Press",
            musclesUsed:["Chest"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Incline Barbell Bench Press",
            musclesUsed:["Chest"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Incline Dumbbell Bench Press",
            musclesUsed:["Chest"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Decline Barbell Bench Press",
            musclesUsed:["Chest"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Decline Dumbbell Bench Press",
            musclesUsed:["Chest"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Flat Chest Press Machine",
            musclesUsed:["Chest"],
            requiredEquipment:"Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Incline Chest Press Machine",
            musclesUsed:["Chest"],
            requiredEquipment:"Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Decline Chest Press Machine",
            musclesUsed:["Chest"],
            requiredEquipment:"Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dips -on parallel bars with slight forward lean",
            musclesUsed:["Chest"],
            requiredEquipment:"Bar",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Push-Ups",
            musclesUsed:["Chest"],
            requiredEquipment:"None",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Flat Dumbbell Flyes",
            musclesUsed:["Chest"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Incline Dumbbell Flyes",
            musclesUsed:["Chest"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Decline Dumbbell Flyes",
            musclesUsed:["Chest"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Pec Deck Machine",
            musclesUsed:["Chest"],
            requiredEquipment:"Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Cable Crossovers/Cable Flyes",
            musclesUsed:["Chest"],
            requiredEquipment:"Cable",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Pull-Ups",
            musclesUsed:["Back"],
            requiredEquipment:"Bar",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Chin-Ups",
            musclesUsed:["Back"],
            requiredEquipment:"Bar",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Lat Pull-Downs",
            musclesUsed:["Back"],
            requiredEquipment:"None",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Bent Over Barbell Rows",
            musclesUsed:["Back"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Bent Over Dumbbell Rows",
            musclesUsed:["Back"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"T-Bar Rows",
            musclesUsed:["Back"],
            requiredEquipment:"Bar",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Seated Cable Rows",
            musclesUsed:["Back"],
            requiredEquipment:"Cable",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Chest Supported Barbell Rows",
            musclesUsed:["Back"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Chest Supported Dumbbell Rows",
            musclesUsed:["Back"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Chest Supported Machine Rows",
            musclesUsed:["Back"],
            requiredEquipment:"Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Inverted Rows",
            musclesUsed:["Back"],
            requiredEquipment:"Bar",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Barbell Machine Shrugs",
            musclesUsed:["Back"],
            requiredEquipment:"Barbell Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Machine Shrugs",
            musclesUsed:["Back"],
            requiredEquipment:"Dumbbell Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Seated Overhead Barbell Press",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Seated Overhead Dumbbell Press",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Standing Overhead Barbell Press",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Standing Overhead Dumbbell Press",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Overhead Machine Press",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Arnold Press",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Bar",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Barbell Machine Upright Rows",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Barbell Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Machine Upright Rows",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Dumbbell Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Machine Lateral Raises",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Dumbbell Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Cable Machine Lateral Raises",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Cable Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Machine Front Raises",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Dumbbell Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Cable Machine Front Raises",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Cable Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Barbell Machine Rear Delt Rows",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Barbell Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Barbell Machine Rear Delt Raises",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Barbell Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Barbell Machine Rear Delt Flyes",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Barbell Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Machine Rear Delt Rows",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Dumbbell Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Machine Rear Delt Raises",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Dumbbell Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Machine Rear Delt Flyes",
            musclesUsed:["Shoulder"],
            requiredEquipment:"Dumbbell Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Barbell Squats",
            musclesUsed:["Quadriceps"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Squats",
            musclesUsed:["Quadriceps"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Barbell Front Squats",
            musclesUsed:["Quadriceps"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Front Squats",
            musclesUsed:["Quadriceps"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Barbell Split Squats",
            musclesUsed:["Quadriceps"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Split Squats",
            musclesUsed:["Quadriceps"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Barbell Lunges",
            musclesUsed:["Quadriceps"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Lunges",
            musclesUsed:["Quadriceps"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Barbell Step-Ups",
            musclesUsed:["Quadriceps"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Step-Ups",
            musclesUsed:["Quadriceps"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Leg Press",
            musclesUsed:["Quadriceps"],
            requiredEquipment:"None",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Machine Squat/Hack Squat",
            musclesUsed:["Quadriceps"],
            requiredEquipment:"Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Leg Extensions",
            musclesUsed:["Quadriceps"],
            requiredEquipment:"None",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Barbell Romanian Deadlifts",
            musclesUsed:["Hamstring"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Romanian Deadlifts",
            musclesUsed:["Hamstring"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Barbell Straight Leg Deadlifts",
            musclesUsed:["Hamstring"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Straight Leg Deadlifts",
            musclesUsed:["Hamstring"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Barbell Sumo Deadlifts",
            musclesUsed:["Hamstring"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Sumo Deadlifts",
            musclesUsed:["Hamstring"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Glute-Ham Raises",
            musclesUsed:["Hamstring"],
            requiredEquipment:"None",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Hyperextensions",
            musclesUsed:["Hamstring"],
            requiredEquipment:"None",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Cable Pull-Throughs",
            musclesUsed:["Hamstring"],
            requiredEquipment:"Cable",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Good-Mornings",
            musclesUsed:["Hamstring"],
            requiredEquipment:"None",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Leg Curls",
            musclesUsed:["Hamstring"],
            requiredEquipment:"None",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Standing Barbell Curls",
            musclesUsed:["Biceps"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Curls",
            musclesUsed:["Biceps"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Barbell Preacher Curls",
            musclesUsed:["Biceps"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Preacher Curls",
            musclesUsed:["Biceps"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Seated Dumbbell Curls",
            musclesUsed:["Biceps"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Incline Dumbbell Curls",
            musclesUsed:["Biceps"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Hammer Curls",
            musclesUsed:["Biceps"],
            requiredEquipment:"None",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Concentration Curls",
            musclesUsed:["Biceps"],
            requiredEquipment:"None",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Cable Curls",
            musclesUsed:["Biceps"],
            requiredEquipment:"Cable",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Biceps Curl Machine",
            musclesUsed:["Biceps"],
            requiredEquipment:"Machine",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dips -on parallel bars,elbows close to body,without forward lean",
            musclesUsed:["Triceps"],
            requiredEquipment:"None",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Flat Close Grip Bench Press",
            musclesUsed:["Triceps"],
            requiredEquipment:"None",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Decline Close Grip Bench Press",
            musclesUsed:["Triceps"],
            requiredEquipment:"None",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Close Grip Push-Ups",
            musclesUsed:["Triceps"],
            requiredEquipment:"None",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Laying Barbell Triceps Extensions",
            musclesUsed:["Triceps"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Triceps Extensions",
            musclesUsed:["Triceps"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Skull Crushers",
            musclesUsed:["Triceps"],
            requiredEquipment:"None",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Overhead Barbell Triceps Extensions",
            musclesUsed:["Triceps"],
            requiredEquipment:"Barbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Dumbbell Triceps Extensions",
            musclesUsed:["Triceps"],
            requiredEquipment:"Dumbbell",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Cable Press-Downs",
            musclesUsed:["Triceps"],
            requiredEquipment:"Cable",
            goalStats:[0,0,0],
            myStats:[0,0,0]),
        Exercises(name:"Bench Dips",
            musclesUsed:["Triceps"],
            requiredEquipment:"None",
            goalStats:[0,0,0],
            myStats:[0,0,0])
    ]
    

    

    
 
    @IBAction func onExerciseSelect(sender: AnyObject) {

        let exercise = self.listOfExercises[indexPath.row]
        let exerciseIndex:Int = theTableView.indexPathForSelectedRow!.row
        
        subview.currentExercise = exercise
        
        print("prep segue: \(exerciseIndex)")
    } //  */
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.listOfExercises = exerciseList
        // reload the table
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listOfExercises.count
    }
    
    override func tableView(tableView:UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        // ask for a reusable cell from the tableview, and create a new cell if there arent any
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath:indexPath) as UITableViewCell
        let exercise = self.listOfExercises[indexPath.row]
        
        // Configure Cell
        cell.textLabel!.text = exercise.name_
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    // */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    Exercises(newName:"Pull Ups",
    newRequiredEquipment:"None",
    newMusclesUsed:["Back", "Biceps", "Pectorals"],
    newGoalStats:[0,0,0],
    newMyStats:[0,0,0])    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
