//
//  CustomViews.swift
//  Fitness App
//
//  Created by khawlah khalid on 12/03/2022.
//

import SwiftUI

var faceIdButton : some View{
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


