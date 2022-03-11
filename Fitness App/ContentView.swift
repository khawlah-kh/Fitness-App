//
//  ContentView.swift
//  Fitness App
//
//  Created by khawlah khalid on 11/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            if UIScreen.main.bounds.height < 750 {
                
                ScrollView(.vertical,showsIndicators: false){
                    
                    LoginMainPage()
                    
                  
                }
            }
            else{
                
                LoginMainPage()
                
               
                
                
            }
            
            
        }
        .background {
            Color.black.ignoresSafeArea()
        }
        .preferredColorScheme(.dark)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
