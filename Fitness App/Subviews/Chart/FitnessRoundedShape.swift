//
//  FitnessRoundedShape.swift
//  Fitness App
//
//  Created by khawlah khalid on 12/03/2022.
//

import SwiftUI

struct FitnessRoundedShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 5, height: 5))
        return Path(path.cgPath)
    }
    
   
}

