//
//  LoginView.swift
//  Fitness App
//
//  Created by khawlah khalid on 12/03/2022.
//

import SwiftUI

struct LoginView: View {
    @State var password : String = ""
    @State var isPresented = false
    var body: some View {
        VStack{
            HStack{
                VStack(alignment:.leading){
                   Text("Welcome back")
                        .foregroundColor(.white)
                        .font(.title3)
                        .bold()
                        .padding(.bottom,1)
                    Text("Khawlah!")
                        .foregroundColor(.white)
                         .font(.title)
                         .bold()
                         .padding(.bottom,1)
                       
                    Button {
                        
                    } label: {
                        FooterButton(title: "Not Me?")
                    }
                }
                Spacer()
                FitnessImage(imageName: "person.circle")
            }
            .padding()
            VStack(alignment: .leading, spacing: 15) {
                PasswordField(password: $password)
                
                Button {
                    
                } label: {
                    FooterButton(title: "Forget Password?")
                }
                
                Button {
                    isPresented.toggle()
                    
                } label: {
                    
                    FitnessButton(title: "Login")
                }
                Button {
                   
                    
                } label: {
                    faceIdButton
                }

                    
            }
            .padding()
            Spacer()
                .fullScreenCover(isPresented: $isPresented) {
                    FitnessDashboard()
                }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .preferredColorScheme(.dark)
    }
}
