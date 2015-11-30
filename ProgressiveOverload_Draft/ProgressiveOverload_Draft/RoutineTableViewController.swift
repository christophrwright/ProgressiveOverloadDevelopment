//
//  RoutineTableViewController.swift
//  ProgressiveOverload_Draft
//
//  Created by Chris on 11/9/15.
//  Copyright © 2015 Chris. All rights reserved.
//

import UIKit

class RoutineTableViewController: UITableViewController {

    @IBOutlet var theTableView: UITableView!
    var listOfRoutines = routineList
    
    
    /*  @IBAction func addRoutine(sender: AnyObject) {
    let button = sender as! UIButton
    let newRoutine = Routines(name:"PushUp Routine", exerciseList:[Exercises(newName:"Push Ups",
    newRequiredEquipment:"None",
    newMusclesUsed:["Pectorals", "Triceps", "Back", "Core"],
    newGoalStats:[0,0,0],
    newMyStats:[0,0,0])])
    listOfRoutines.append(newRoutine)
    button.setValue(button.currentTitle, forKey:"NewTitle")
    }
    @IBAction func editRoutine(sender: AnyObject) {
    // send to detail view of routine
    }
    @IBAction func removeRoutine(sender: AnyObject) {
    // let i:Int
    // listOfRoutines = listOfRoutines[0...i].popLast().append(listOfRoutines[i+1...(listOfRoutines.length)])
    }*/
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        // this is used as self.listOfRoutines[0]
        self.listOfRoutines = routineList        
        // reload the table
        self.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listOfRoutines.count
    }
    
    override func tableView(tableView:UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        // ask for a reusable cell from the tableview, and create a new cell if there arent any
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath:indexPath) as UITableViewCell
        // Get the corresponding candy from the candies array
        let theRoutine = self.listOfRoutines[indexPath.row]
        
        // Configure Cell
        cell.textLabel!.text = theRoutine.name_
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
    
    // *
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    //     */
    
    // *
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
        
    }
    // */
    
    // *
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




// Eric's; to resolve later



//
//  RoutineTableViewController.swift
//  ProgressiveOverload_Draft
//
//  Created by Chris on 11/9/15.
//  Copyright © 2015 Chris. All rights reserved.
//

import UIKit

class RoutineTableViewController: UITableViewController {
    struct Routines{
        let name:String
        let exerciseList : [Exercises]
    }
    var listOfRoutines = [Routines(name:"myRoutine",
        exerciseList:[ Exercises(newName:"Null",
            newRequiredEquipment:"None",
            newMusclesUsed:["Zero", "Zilch", "Nada"],
            newGoalStats:[0,0,0],
            newMyStats:[0,0,0])]
        )]
    
    @IBAction func addRoutine(sender: AnyObject) {
        let button = sender as! UIButton
        let newRoutine = Routines(name:"PushUp Routine", exerciseList:[Exercises(newName:"Push Ups",
            newRequiredEquipment:"None",
            newMusclesUsed:["Pectorals", "Triceps", "Back", "Core"],
            newGoalStats:[0,0,0],
            newMyStats:[0,0,0])])
        listOfRoutines.append(newRoutine)
        button.setValue(button.currentTitle, forKey:"NewTitle")
    }
    @IBAction func editRoutine(sender: AnyObject) {
        // send to detail view of routine
    }
    @IBAction func removeRoutine(sender: AnyObject) {
        // let i:Int
        // listOfRoutines = listOfRoutines[0...i].popLast().append(listOfRoutines[i+1...(listOfRoutines.length)])
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        // this is used as self.listOfRoutines[0]
        self.listOfRoutines = [Routines(name:"FullBody Routine", exerciseList:[
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
            )]
        
        // reload the table
        self.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listOfRoutines.count
    }
    
    override func tableView(tableView:UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        // ask for a reusable cell from the tableview, and create a new cell if there arent any
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath:indexPath) as UITableViewCell
        // Get the corresponding candy from the candies array
        let theRoutine = self.listOfRoutines[indexPath.row]
        
        // Configure Cell
        cell.textLabel!.text = theRoutine.name
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
    
    // *
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    //     */
    
    // *
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
        
    }
    // */
    
    // *
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
