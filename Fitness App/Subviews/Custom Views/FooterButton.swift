//
//  FooterButton.swift
//  Fitness App
//
//  Created by khawlah khalid on 12/03/2022.
//

import SwiftUI

struct FooterButton: View {
    let title : String
    var body: some View {
        Text(title)
            .foregroundColor(.FitnessBlue)
            .fontWeight(.semibold)
            .font(.footnote)
    }
}

struct FooterButton_Previews: PreviewProvider {
    static var previews: some View {
        FooterButton(title: "Not Me?")
    }
}
