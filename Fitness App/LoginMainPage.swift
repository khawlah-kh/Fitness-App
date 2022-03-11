//
//  LoginMainPage.swift
//  Fitness App
//
//  Created by khawlah khalid on 11/03/2022.
//

import SwiftUI

struct LoginMainPage: View {
    @State var index = 0
    @Namespace var name
    var body: some View {
        VStack{
            Image (systemName: "circles.hexagongrid.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
            
            HStack(spacing:0){
                
                Button {
                    withAnimation(.spring()) {
                        index = 0
                    }
                } label: {
                    VStack{
                        Text("Login")
                            .foregroundColor(index == 0 ? .white : .gray)
                            .font(.title2)
                            .bold()
                        ZStack{
                            Capsule()
                                .fill(Color.white.opacity(0.04))
                                .frame(height: 4)
                            if index == 0{
                                Capsule()
                                    .fill(Color.FitnessBlue)
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "tap", in: name)
                            }
                        }
                    }
                }
                
                Button {
                    withAnimation(.spring()){
                        index = 1
                    }
                } label: {
                    VStack{
                        Text("Sign Up")
                            .foregroundColor(index == 1 ? .white : .gray)
                            .font(.title2)
                            .bold()
                        ZStack{
                            Capsule()
                                .fill(Color.white.opacity(0.04))
                                .frame(height: 4)
                            if index == 1{
                                Capsule()
                                    .fill(Color.FitnessBlue)
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "tap", in: name)
                            }
                        }
                    }
                    
                }
            }
            Spacer()
            if index == 0{
                //Log in
                Text("log in")
            }
            else{
                //sign up
                Text("Sign up")
            }
        }
    }
}

struct LoginMainPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginMainPage()
            .preferredColorScheme(.dark)
    }
}