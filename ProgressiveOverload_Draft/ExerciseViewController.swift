//
//  ExerciseViewController.swift
//  ProgressiveOverload_Draft
//
//  Created by Chris on 11/18/15.
//  Copyright © 2015 Chris. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {

    @IBOutlet weak var exerciseName: UINavigationBar!
    @IBOutlet weak var exerciseDescription: UILabel!
    @IBOutlet weak var best: UILabel!
    @IBOutlet weak var last: UILabel!
    
    @IBOutlet weak var sets: UILabel!
    @IBOutlet weak var reps: UILabel!
    @IBOutlet weak var weight: UILabel!

    @IBOutlet weak var userSets: UITextField!
    @IBOutlet weak var userReps: UITextField!
    @IBOutlet weak var userWeight: UITextField!
    
    @IBOutlet var theVC: UIViewController!

    
    var listOfExercises = exerciseList
    var selectedGoalStats = exerciseList[0].goalStats_ // as [Int]!
    var selectedUserStats  = exerciseList[0].userStats_ // as [Int]! 
    
    var currentExercise:Exercises = exerciseList[0] as Exercises!  // func setBest(){}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.title = currentExercise.name_

/*        self.weight.text = String(selectedGoalStats[0])
        self.reps.text = String(selectedGoalStats[1].value)
        self.sets.text = String(selectedGoalStats[2].value)
        
        self.userWeight.text = String(selectedUserStats[0])
        self.userReps.text = String(selectedUserStats[1])
        self.userSets.text = String(selectedUserStats[2])*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
