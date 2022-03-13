//
//  SignupView.swift
//  Fitness App
//
//  Created by khawlah khalid on 12/03/2022.
//

import SwiftUI

struct SignupView: View {
    @State var username :String = ""
    @State var password :String = ""
    var body: some View {
        VStack(alignment:.leading,spacing: 12){
            Text("Create Account")
                .foregroundColor(.white)
                 .font(.title)
                 .bold()
                 .padding(.bottom,1)
            
            VStack(alignment: .leading, spacing: 15) {
                
                UsernameField(username: $username)
                
                PasswordField(password: $password)
            
                Button {
                    
                } label: {
                    
                    FitnessButton(title: "Sign Up")
                }
                
                Button {
                } label: {
                    faceIdButton
                }
            }
            
           Spacer()
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
            .preferredColorScheme(.dark)
    }
}
