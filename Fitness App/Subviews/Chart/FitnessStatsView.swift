//
//  FitnessStatsView.swift
//  Fitness App
//
//  Created by khawlah khalid on 13/03/2022.
//

import SwiftUI

struct FitnessStatsView: View {
    let columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    let width : CGFloat = (UIScreen.main.bounds.width - 150) / 2
    var body: some View {
        
        VStack{
            HStack{
                Text("Statistics")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                Spacer()
                
            }.padding()
            LazyVGrid(columns: columns,spacing:30) {
                
                ForEach(Stats.dummuData) {stat in
                    VStack{
                            Text(stat.title.rawValue)
                                .font(.body)
                                .bold()
                                .foregroundColor(.white)
   
                        
                        ZStack{
                            Circle()
                                .trim(from: 0, to: 1)
                                .stroke(stat.color.opacity(0.4),lineWidth: 10)
                                .frame(width:width, height:width )

                            Circle()
                                .trim(from: 0, to: stat.currentData / stat.goal)
                                .stroke(stat.color,lineWidth: 10)
                                .frame(width:width, height:width )

                            Text(stat.percent)
                                .font(.title)
                                .bold()
                                .foregroundColor(stat.color)
                                .rotationEffect(.degrees(90))
                        }
                        .rotationEffect(.degrees(-90))
                        

                        Text(stat.activityCurrentData)
             
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                       
                        
                    }
                    
                }
                .padding()
                
                
            }
            .padding()
        }
       
    }

    

    
 
}

struct FitnessStatsView_Previews: PreviewProvider {
    static var previews: some View {
        FitnessStatsView()
            .preferredColorScheme(.dark)
    }
}
