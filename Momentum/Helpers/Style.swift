//
//  Style.swift
//  Momentum
//
//  Created by Jake Marold on 3/14/23.
//

import SwiftUI

extension View {
    func momentumStyle() -> some View {
        self.font(.custom("Poppins-Regular", size: 16))
            .foregroundColor(Color("Secondary"))
    }
}

