//
//  FitnessDaily.swift
//  Fitness App
//
//  Created by khawlah khalid on 12/03/2022.
//

import SwiftUI

struct FitnessDaily : Identifiable{
    
    var id = UUID()
    var day : String
    var workoutInMins : CGFloat
    
    
    static var dummyData = [FitnessDaily(day: "Sun", workoutInMins: 60),
                            FitnessDaily(day: "Mon", workoutInMins: 80.0),
                            FitnessDaily(day: "Tue", workoutInMins: 90.0),
                            FitnessDaily(day: "Wed", workoutInMins: 55.0),
                            FitnessDaily(day: "Thu", workoutInMins: 100.0),
                            FitnessDaily(day: "Fri", workoutInMins: 57.0),
                            FitnessDaily(day: "Sat", workoutInMins: 75.0)]
    
    
    
    
    
    
}
