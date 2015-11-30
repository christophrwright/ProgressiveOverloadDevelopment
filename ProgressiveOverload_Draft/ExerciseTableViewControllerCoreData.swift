//
//  ExerciseTableViewController.swift
//  ProgressiveOverload_Draft
//
//  Created by Chris on 11/9/15.
//  Copyright © 2015 Chris. All rights reserved.
//

import UIKit
import CoreData

class ExerciseTableViewController: UITableViewController, UITableViewDataSource{
    
    //needs to be linked to UI. this adds an exercise.
    @IBAction func addExercise(sender: AnyObject) {
        let saveAction = UIAlertAction(title: "Save",
            style: .Default,
            handler: { (action:UIAlertAction) -> Void in
                
                let textField = alert.textFields!.first
                self.saveName(textField!.text!)
                self.tableView.reloadData()
        })
        
    }
    //this function saves the exerciseName to core data
    func saveName(name: String) {
        //get empty managed object
        let appDelegate =
        UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext
        
        //create new managed object
        let entity =  NSEntityDescription.entityForName("exerciseName",
            inManagedObjectContext:managedContext)
        
        let exercise = NSManagedObject(entity: entity!,
            insertIntoManagedObjectContext: managedContext)
        
        //set the exercise name - name is determined by arguement passed to saveName when it is called
        // ie: saveName("Bench Press")
        exercise.setValue(name, forKey: "exerciseName")
        
        //save new managed object
        //handle errors.
        var error: NSError?
        if !managedContext?.save(&error)) {
            println("Could not save \(error),\(error.userInfo)")
        }
        //add new ite to local data source
        exercises.append(exercise)
                
        
    
    var exercises = [NSManagedObject]() //storing exercise entities. has attributes, exerciseName, sets,reps,weights.

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\"Exercises\""
        
        
        
        tableView.registerClass(UITableViewCell.self,
            forCellReuseIdentifier: "Cell")


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

    func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
            return exercises.count //return amount of nsmanagedobjects
    }
    
    func tableView(tableView: UITableView,
        cellForRowAtIndexPath
        indexPath: NSIndexPath) -> UITableViewCell {
            
            let cell =
            tableView.dequeueReusableCellWithIdentifier("Cell")
            
            let exercise = exercises[indexPath.row]
            
            cell.textLabel?.text = exercises.valueForKey("exerciseName") as? String //key to value coding
            
            return cell!
        }
        
        func fetchData() {
            // get managed object context
            let appDelegate = UIApplication.sharedApplication().delegate
             as AppDelegate
            let managedObjectContext = appDelegate.managedObjectContext !
            
            //crate fetch request into core data
            let fetchRequest = NSFetchRequest(entityName: "exerciseName")
            
            //execute fetch
            var error: NSError?
            
            if let fetchedResults = managedObjectContext.executeFetchRequest(fetchData(), error: &error) as [NSManagedObject]?
            {
                //fetched results is not nil. update self.items
                exercises = fetchedResults
            } else {
                println("Could Not Fetch \(error), \(error!.userInfo)")
            ?
            }}

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
