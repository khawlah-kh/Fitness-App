//
//  UsernameField.swift
//  Fitness App
//
//  Created by khawlah khalid on 12/03/2022.
//

import SwiftUI

struct UsernameField: View {
    @Binding var username : String
    var body: some View {
        VStack(alignment: .leading){
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
        }
        
    }
}

struct UsernameField_Previews: PreviewProvider {
    static var previews: some View {
        UsernameField(username: .constant(""))
    }
}
