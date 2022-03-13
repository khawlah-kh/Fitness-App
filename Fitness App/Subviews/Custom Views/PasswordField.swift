//
//  PasswordField.swift
//  Fitness App
//
//  Created by khawlah khalid on 12/03/2022.
//

import SwiftUI

struct PasswordField: View {
    @Binding var password : String
    var body: some View {
        VStack(alignment:.leading){
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
            
        }
    }
}

struct PasswordField_Previews: PreviewProvider {
    static var previews: some View {
        PasswordField(password: .constant(""))
    }
}
