2//
//  ExerciseTableViewController.swift
//  ProgressiveOverload_Draft
//
//  Created by Chris on 11/9/15.
//  Copyright © 2015 Chris. All rights reserved.
//

import UIKit
var indexPath = NSIndexPath()
class ExerciseTableViewController: UITableViewController{
    
   @IBOutlet var theTableView: UITableView!

    var listOfExercises = exerciseList

    
  /*   @IBAction override func prepareForSegue(segue: (UIStoryboardSegue!), sender: AnyObject!) {
        let exercise = self.listOfExercises[indexPath.row]
        let exerciseIndex:Int = theTableView.indexPathForSelectedRow!.row
        
        print("prep segue: \(exerciseIndex)")
        
        if (segue.identifier == "ShowExercise") {
            //let myRow = tableView.indexPathForSelectedRow().row+1
            let vc = segue.destinationViewController as! ExerciseViewController
            vc.currentExercise = exercise
            
            
            print("prep segue: \(exerciseIndex)")
        }
    }//  */
    
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



// Eri'cs ; to resolve later


//
//  ExerciseTableViewController.swift
//  ProgressiveOverload_Draft
//
//  Created by Chris on 11/9/15.
//  Copyright © 2015 Chris. All rights reserved.
//

import UIKit
<<<<<<< HEAD
import CoreData

class ExerciseTableViewController: UITableViewController, UITableViewDataSource{
    
    //needs to be linked to UI. this adds an exercise.
    @IBAction func addExercise(sender: AnyObject) {
        let saveAction = UIAlertAction(title: "Save",
            style: .Default,
            handler: { (action:UIAlertAction) -> Void in
                
                let textField = alert.textFields!.first
                self.saveName(textField!.text!)
                self.saveReps(textField!.text!)
                self.saveSets(textField!.text!)
                self.saveWeight(textField!.text!)
                self.tableView.reloadData()
        })
        
    }
    //this function saves the sets to core data
    func saveSet(sets: Int) {
        //get empty managed object
        let appDelegate =
        UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext
        
        //create new managed object
        let entity =  NSEntityDescription.entityForName("sets",
            inManagedObjectContext:managedContext)
        
        let setnumber = NSManagedObject(entity: entity!,
            insertIntoManagedObjectContext: managedContext)
        
        //set the exercise name - set is determined by arguement passed to saveSet when it is called
        // ie: SaveSet(3)
        setnumber.setValue(name, forKey: "sets")
        
        //save new managed object
        //handle errors.
        var error: NSError?
        if !managedContext?.save(&error) {
            println("Could not save \(error),\(error.userInfo)")
        }
        //add new ite to local data source
        exercises.append(setnumber)
    }
    
    //saves exercisename to core data
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
        if !managedContext?.save(&error) {
            println("Could not save \(error),\(error.userInfo)")
        }
        //add new ite to local data source
        exercises.append(exercise)
    }
    //saves reps to core data
    func saveReps(sets: Int) {
        //get empty managed object
        let appDelegate =
        UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext
        
        //create new managed object
        let entity =  NSEntityDescription.entityForName("reps",
            inManagedObjectContext:managedContext)a
        
        let repnumber = NSManagedObject(entity: entity!,
            insertIntoManagedObjectContext: managedContext)
        
        //set the exercise name - name is determined by arguement passed to saveReps when it is called
        // ie: SaveReps(3)
        repnumber.setValue(name, forKey: "reps")
        
        //save new managed object
        //handle errors.
        var error: NSError?
        if !managedContext?.save(&error) {
            println("Could not save \(error),\(error.userInfo)")
        }
        //add new ite to local data source
        exercises.append(repnumber)
    }
    
    
    
    
    //saves weights to core data
    func saveWeight(sets: Int) {
        //get empty managed object
        let appDelegate =
        UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext
        
        //create new managed object
        let entity =  NSEntityDescription.entityForName("weight",
            inManagedObjectContext:managedContext)
        
        let weightamount = NSManagedObject(entity: entity!,
            insertIntoManagedObjectContext: managedContext)
        
        //set the exercise name - name is determined by arguement passed to saveWeight when it is called
        // ie: saveWeight(3)
        weightamount.setValue(name, forKey: "weight")
        
        //save new managed object
        //handle errors.
        var error: NSError?
        if !managedContext?.save(&error) {
            println("Could not save \(error),\(error.userInfo)")
        }
        //add new ite to local data source
        exercises.append(weightamount)
    }
    
    
    var exercises = [NSManagedObject]() //storing exercise entities. has attributes, exerciseName, sets,reps,weights.
    =======
    var indexPath = NSIndexPath()
    // have tried replacing with , UITableViewDataSource, UITableViewDelegate
    class ExerciseTableViewController: UITableViewController{
        
        @IBOutlet var theTableView: UITableView!
        var subview:ExerciseViewController!
        
        var listOfExercises:[Exercises] = [Exercises]()
        
        
        
        
        @IBAction func onExerciseSelect(sender: AnyObject) {
            
            let exercise = self.listOfExercises[indexPath.row]
            let exerciseIndex:Int = theTableView.indexPathForSelectedRow!.row
            
            subview.currentExercise = exercise
            
            print("prep segue: \(exerciseIndex)")
        } //  */
        
        >>>>>>> origin/CoreDataChanges
        
        override func viewDidLoad() {
            super.viewDidLoad()
            title = "\"Exercises\""
            
            fetchName()
            fetchSets()
            fetchReps()
            fetchWeight()
            History.updateHistory(fetchedResultsName, [fetchedResultsSets, fetchedResultsReps, fetchedResultsWeight])
            
            tableView.registerClass(UITableViewCell.self,
                forCellReuseIdentifier: "Cell")
                
                
                // Uncomment the following line to preserve selection between presentations
                // self.clearsSelectionOnViewWillAppear = false
                
                // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
                // self.navigationItem.rightBarButtonItem = self.editButtonItem()
                <<<<<<< HEAD
                /*
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
                */
                =======
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
                >>>>>>> origin/CoreDataChanges
            
            // reload the table
            self.theTableView.reloadData()
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        // MARK: - Table view data source
        
        <<<<<<< HEAD
        func tableView(tableView: UITableView,
            numberOfRowsInSection section: Int) -> Int {
                return exercises.count //return amount of nsmanagedobjects
        }
        
        override func tableView(tableView: UITableView,
            cellForRowAtIndexPath
            indexPath: NSIndexPath) -> UITableViewCell {
                
                let cell =
                tableView.dequeueReusableCellWithIdentifier("Cell")
                
                let exercise = exercises[indexPath.row]
                
                cell.textLabel?.text = exercises.valueForKey("exerciseName") as? String //key to value coding
                
                return cell!
        }
        =======
        override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.listOfExercises.count
        }
        
        override func tableView(tableView:UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
            // ask for a reusable cell from the tableview, and create a new cell if there arent any
            let cell = self.theTableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath:indexPath) as UITableViewCell
            let exercise = self.listOfExercises[indexPath.row]
                >>>>>>> origin/CoreDataChanges
                
                
                <<<<<<< HEAD
            //the following 4 functions are nearly identical, only different based on whether they
            //fetch the name, sets, reps, or weights of an exercise.
            
            
            //get name
            func fetchName() {
                // get managed object context
                let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
                let managedObjectContext = appDelegate.managedObjectContext !
                
                //crate fetch request into core data
                let fetchRequest = NSFetchRequest(entityName: "exerciseName")
                
                //execute fetch
                var error: NSError?
                
                if let fetchedResultsName = managedObjectContext.executeFetchRequest(fetchName(), error: &error) as [NSManagedObject]?
                {
                    //fetched results is not nil. update self.items
                    exercises = fetchedResultsName
                } else {
                    println("Could Not Fetch \(error), \(error!.userInfo)")?
                }
            }
            
            //get sets
            func fetchSets() {
                // get managed object context
                let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
                let managedObjectContext = appDelegate.managedObjectContext !
                
                //crate fetch request into core data
                let fetchRequest = NSFetchRequest(entityName: "sets")
                
                //execute fetch
                var error: NSError?
                
                if let fetchedResultsSets = managedObjectContext.executeFetchRequest(fetchSets(), error: &error) as [NSManagedObject]?
                {
                    //fetched results is not nil. update self.items
                    exercises = fetchedResultsSets
                } else {
                    println("Could Not Fetch \(error), \(error!.userInfo)")?
                }
            }
            
            //get reps
            func fetchReps() {
                // get managed object context
                let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
                let managedObjectContext = appDelegate.managedObjectContext !
                
                //crate fetch request into core data
                let fetchRequest = NSFetchRequest(entityName: "reps")
                
                //execute fetch
                var error: NSError?
                
                if let fetchedResultsReps = managedObjectContext.executeFetchRequest(fetchReps(), error: &error) as [NSManagedObject]?
                {
                    //fetched results is not nil. update self.items
                    exercises = fetchedResultsReps
                } else {
                    println("Could Not Fetch \(error), \(error!.userInfo)")?
                }
            }
            
            //get weights
            func fetchWeight() {
                // get managed object context
                let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
                let managedObjectContext = appDelegate.managedObjectContext !
                
                //crate fetch request into core data
                let fetchRequest = NSFetchRequest(entityName: "weight")
                
                //execute fetch
                var error: NSError?
                
                if let fetchedResultsWeight = managedObjectContext.executeFetchRequest(fetchWeight(), error: &error) as [NSManagedObject]?
                {
                    //fetched results is not nil. update self.items
                    exercises = fetchedResultsWeight
                } else {
                    println("Could Not Fetch \(error), \(error!.userInfo)")?
                }
            }
            /*
            override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
            
            // Configure the cell...
            
            return cell
            }
            */
            =======
            return cell
        }
        
        >>>>>>> origin/CoreDataChanges
        
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
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        }
        */
        
}
