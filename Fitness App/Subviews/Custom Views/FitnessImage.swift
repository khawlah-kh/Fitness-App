//
//  FitnessImage.swift
//  Fitness App
//
//  Created by khawlah khalid on 12/03/2022.
//

import SwiftUI

struct FitnessImage: View {
    let imageName : String
    var body: some View {
        Image(systemName:imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 80, height: 80)
    }
}

struct FitnessImage_Previews: PreviewProvider {
    static var previews: some View {
        FitnessImage(imageName:"person.circle")
    }
}
