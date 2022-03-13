//
//  Stats.swift
//  Fitness App
//
//  Created by khawlah khalid on 13/03/2022.
//

import SwiftUI

enum Activity : String{
    
    case running = "Running"
    case water = "Water"
    case calories = "Calories"
    case sleep = "Sleep"
    case cycling = "Cycling"
    case steps = "Steps"
    
    var  MeasureType : String {
        var measureType = ""
        switch self {
        case .running,.cycling:
            measureType = "MI"
        case .water:
            measureType = "L"
        case .calories:
            measureType = "KCAL"
        case .sleep:
            measureType = "HRS"
    
        case .steps:
            measureType = "STEPS"
        }
        return measureType
    }
    

}
struct Stats : Identifiable{
    
    let id = UUID()
    let title : Activity
    let currentData : CGFloat
    let goal : CGFloat
    let color : Color
    
    static let dummuData : [Stats] =
    [.init(title: .running, currentData: 9.8, goal: 15, color: Color.FitnessRunning),
     .init(title: .water, currentData: 4.5, goal: 5, color: Color.FitnessWater),
     .init(title: .calories, currentData: 880, goal: 1000, color: Color.FitnessCalories),
     .init(title: .sleep, currentData: 8, goal: 10, color: Color.FitnessSleep),
     .init(title: .cycling, currentData: 12.8, goal: 15, color: Color.FitnessCycling),
     .init(title: .steps, currentData: 9800, goal: 15000, color: Color.FitnessSteps)
                                      
    ]
    
    
    
    var percent:String{
        
        let percent = (currentData / goal) * 100
        return String(format: "%0.1f", percent) + "%"

    }
    
    var decimalValue:String{
        let format = NumberFormatter()
        format.numberStyle = .decimal
        return format.string(from: NSNumber.init(value: Float(currentData)))!
    }
    
    var activityCurrentData :String{

        decimalValue+" "+title.MeasureType
    }
    
    
}
