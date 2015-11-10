//
//  ExerciseTableViewController.swift
//  ProgressiveOverload_Draft
//
//  Created by Chris on 11/9/15.
//  Copyright © 2015 Chris. All rights reserved.
//

import UIKit

class ExerciseTableViewController: UITableViewController {
    
    var exercises = [Exercises]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.exercises = [
            Exercises(name:"Push Ups",
                requiredEquipment:"None",
                musclesUsed:["Pectorals", "Triceps", "Back", "Core"],
                goalStats:[0,0,0],
                myStats:[0,0,0]),
            Exercises(name:"Sit Ups",
                requiredEquipment:"None",
                musclesUsed:["Back", "Core"],
                goalStats:[0,0,0],
                myStats:[0,0,0]),
            Exercises(name:"Squats",
                requiredEquipment:"None",
                musclesUsed:["Glutes", "Calves", "Back", "Core"],
                goalStats:[0,0,0],
                myStats:[0,0,0]),
            Exercises(name:"Deadlift",
                requiredEquipment:"None",
                musclesUsed:["Back", "Triceps", "Shoulders", "Core"],
                goalStats:[0,0,0],
                myStats:[0,0,0]),
            Exercises(name:"Pull Ups",
                requiredEquipment:"None",
                musclesUsed:["Back", "Biceps", "Pectorals"],
                goalStats:[0,0,0],
                myStats:[0,0,0])]
        
        // reload the table
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.exercises.count
    }
    
    override func tableView(tableView:UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        // ask for a reusable cell from the tableview, and create a new cell if there arent any
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath:indexPath) as UITableViewCell
        // Get the corresponding candy from the candies array
        let exercise = self.exercises[indexPath.row]
        
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
