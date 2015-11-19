//
//  ExerciseTableViewController.swift
//  ProgressiveOverload_Draft
//
//  Created by Chris on 11/9/15.
//  Copyright © 2015 Chris. All rights reserved.
//

import UIKit

var indexPath = NSIndexPath()

class ExerciseTableViewController: UITableViewController {
    
    @IBOutlet var theTableView: UITableView!

    var listOfExercises:[Exercises] = [Exercises]()
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destVC:ExerciseViewController = segue.destinationViewController as! ExerciseViewController
        
        // let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath:indexPath) as UITableViewCell
        let exercise = self.listOfExercises[indexPath.row]
        
        let exerciseIndex:Int = theTableView.indexPathForSelectedRow!.row
        destVC.title = exercise.name // istOfExercises[exerciseIndex].name
        let selectedGoalStats:[Int] = exercise.goalStats as [Int]!
        let selectedUserStats:[Int] = exercise.userStats as [Int]!
        destVC.weight.text = "\(selectedGoalStats[0])"
        destVC.reps.text = "\(selectedGoalStats[1])"
        destVC.sets.text = "\(selectedGoalStats[2])"
        
        destVC.userWeight.text = "\(selectedUserStats[0])"
        destVC.userReps.text = "\(selectedUserStats[1])"
        destVC.userSets.text = "\(selectedUserStats[2])"
        
        // listOfExercises[exerciseIndex].name

        
        print("prep segue: \(exerciseIndex)")
    } //  */
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.listOfExercises = [
            Exercises(newName:"Push Ups",
                newRequiredEquipment:"None",
                newMusclesUsed:["Pectorals", "Triceps", "Back", "Core"],
                newGoalStats:[0,0,0],
                newMyStats:[0,0,0]),
            Exercises(newName:"Sit Ups",
                newRequiredEquipment:"None",
                newMusclesUsed:["Back", "Core"],
                newGoalStats:[0,0,0],
                newMyStats:[0,0,0]),
            Exercises(newName:"Squats",
                newRequiredEquipment:"None",
                newMusclesUsed:["Glutes", "Calves", "Back", "Core"],
                newGoalStats:[0,0,0],
                newMyStats:[0,0,0]),
            Exercises(newName:"Deadlift",
                newRequiredEquipment:"None",
                newMusclesUsed:["Back", "Triceps", "Shoulders", "Core"],
                newGoalStats:[0,0,0],
                newMyStats:[0,0,0]),
            Exercises(newName:"Pull Ups",
                newRequiredEquipment:"None",
                newMusclesUsed:["Back", "Biceps", "Pectorals"],
                newGoalStats:[0,0,0],
                newMyStats:[0,0,0])]
        
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
        // Get the corresponding candy from the candies array
        let exercise = self.listOfExercises[indexPath.row]
        
        // Configure Cell
        cell.textLabel!.text = exercise.name
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
