//
//  FitnessDashboard.swift
//  Fitness App
//
//  Created by khawlah khalid on 12/03/2022.
//

import SwiftUI

struct FitnessDashboard: View {
    @State var colors : [Color] = [.FitnessBlue , .purple]
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack{
                HStack{
                    Text("Hello Khawlah!")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                        .padding(.bottom,1)
                        .padding(.leading)
                    
                    Spacer()
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        
                        Image(systemName: "xmark.circle")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    
                }
                FitnessBarChart(colors: colors)
                    .padding()
                FitnessStatsView()
                
            }
            
            
            
            
        }
        .background(Color.black.ignoresSafeArea(.all))
        .preferredColorScheme(.dark)
        .padding([.top,.bottom])
    }
}

struct FitnessDashboard_Previews: PreviewProvider {
    static var previews: some View {
        FitnessDashboard()
        
    }
}
