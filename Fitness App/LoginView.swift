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
                    Text("DevTechie!")
                        .foregroundColor(.white)
                         .font(.title)
                         .bold()
                         .padding(.bottom,1)
                       
                    
                    Button {
                        
                    } label: {
                        Text("Not Me?")
                            .foregroundColor(.FitnessBlue)
                            .fontWeight(.semibold)
                            .font(.footnote)
                        
                    }

                    
                    
                    
                    
                }
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                
                
            }
            .padding()
            VStack(alignment: .leading, spacing: 15) {
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
                    
                } label: {
                    Text("Forget Password?")
                        .foregroundColor(.FitnessBlue)
                        .fontWeight(.semibold)
                        .font(.footnote)
                    
                }
                
                Button {
                    isPresented.toggle()
                    
                } label: {
                    
                    Text("Login")
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
            .padding()
            
            
            
            
            
            
            Spacer()
            
                .fullScreenCover(isPresented: $isPresented) {
                    Text("Fitness Home Screen")
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
