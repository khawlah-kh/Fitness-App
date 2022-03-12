//
//  FitnessBarChart.swift
//  Fitness App
//
//  Created by khawlah khalid on 12/03/2022.
//

import SwiftUI

struct FitnessBarChart: View {
    @Binding var selected : UUID
    var colors : [Color]
    var body: some View {
        VStack(alignment: .leading, spacing: 25){
            Text("Daily Worout in Hours")
                .font(.title)
                .bold()
                .foregroundColor(.white)
            HStack(spacing:15) {
                
                ForEach(FitnessDaily.dummyData) { workout in
                    VStack{
                        VStack{
                            Spacer()
                            if selected == workout.id
                            {
                                Text(getWorkoutMinuts(value: workout.workoutInMins))
                                    .foregroundColor(.FitnessBlue)
                                    .padding(.bottom,5)
                                
                            }
                            FitnessRoundedShape()
                                .fill(LinearGradient(
                                     colors:
                                        selected == workout.id ? colors : colors.map{$0.opacity(0.2)}, startPoint: .top, endPoint: .bottom))
                                .frame(height : workout.workoutInMins )
                        }
                        .frame(height:getMaxMinuts())
                        .onTapGesture {
                            withAnimation {
                                selected = workout.id
                            }
                        }
                        Text(workout.day)
                            .foregroundColor(.white)
                            .font(.caption)
                    }
                }
                
                
            }
            
            
        }
        .padding()
        .background(Color.white.opacity(0.08))
        .cornerRadius(10)
        .padding()
      
    }
        
    private func getWorkoutMinuts(value : CGFloat)->String{
        return String(format: "%.0f", value)
    }
    private func getHeight(value:CGFloat)->CGFloat{
        
        let height = value / 1440 * 200
        return height
        
    }
    private func getMaxMinuts()->CGFloat{
        
        var maxMinuts : CGFloat = 0.0
        for workout in FitnessDaily.dummyData {
            if workout.workoutInMins > maxMinuts{
                maxMinuts = max(maxMinuts, workout.workoutInMins)
            }
            
        }
        return maxMinuts + maxMinuts * 0.5
    }
}

struct FitnessBarChart_Previews: PreviewProvider {
    static var previews: some View {
        FitnessBarChart(selected: .constant(UUID()), colors: [Color.FitnessBlue])
    }
}
