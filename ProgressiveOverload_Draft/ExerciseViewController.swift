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
    

    var currentExercise:Exercises!
    // func setBest(){}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.title = currentExercise.name_
        let selectedGoalStats:[Int] = currentExercise.goalStats_ as [Int]!
        let selectedUserStats:[Int] = currentExercise.userStats_ as [Int]!
        self.weight.text = "\(selectedGoalStats[0])"
        self.reps.text = "\(selectedGoalStats[1])"
        self.sets.text = "\(selectedGoalStats[2])"
        
        self.userWeight.text = "\(selectedUserStats[0])"
        self.userReps.text = "\(selectedUserStats[1])"
        self.userSets.text = "\(selectedUserStats[2])"
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
