//
//  FitnessButton.swift
//  Fitness App
//
//  Created by khawlah khalid on 12/03/2022.
//

import SwiftUI

struct FitnessButton: View {
    let title : String
    var body: some View {
        Text(title)
            .bold()
            .foregroundColor(.white)
            .padding(.vertical)
            .frame(width: UIScreen.main.bounds.width-50)
            .background(LinearGradient(colors: [.FitnessBlue,.purple], startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(8)
            .padding(.top)
    }
}

struct FitnessButton_Previews: PreviewProvider {
    static var previews: some View {
        FitnessButton(title: "Login")
    }
}
