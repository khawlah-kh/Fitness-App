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
                Text("Username")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                TextField("Username", text: $username)
                    .padding()
                    .frame(width: UIScreen.main.bounds.width-50)
                    .background(.white)
                    .foregroundColor(.gray.opacity(0.8))
                    .cornerRadius(5)
                    .shadow(color: .white.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: .white.opacity(0.08), radius: 5, x: 0, y: -5)
                
                Text("Password")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                SecureField("Password", text: $password)
                    .padding()
                    .frame(width: UIScreen.main.bounds.width-50)
                    .background(.white)
                    .foregroundColor(.gray.opacity(0.8))
                    .cornerRadius(5)
                    .shadow(color: .white.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: .white.opacity(0.08), radius: 5, x: 0, y: -5)
            
                
                
                Button {
                    //.isPresented.toggle()
                    
                } label: {
                    
                    Text("Sign Up")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width-50)
                        .background(LinearGradient(colors: [.FitnessBlue,.purple], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(8)
                        .padding(.top)
                }
                
                Button {
                   
                    
                } label: {
                    
                    HStack{
                        Image(systemName: "faceid")
                            .foregroundColor(.FitnessBlue)
                        Text("Login with Face ID")
                            .bold()
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .frame(width: UIScreen.main.bounds.width-50)
                    .background(RoundedRectangle(cornerRadius: 8).stroke(Color.FitnessBlue,lineWidth: 1))
                    .cornerRadius(8)
                    .padding(.top)

                    
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
