//
//  MomentumStyle.swift
//  Momentum
//
//  Created by Jake Marold on 3/14/23.
//

import SwiftUI

//struct MomentumStyle: ViewModifier {
  //  func body(content: Content) -> some View {
    //    content
      //      .foregroundColor(Color("Secondary"))
        //    .font(Font.custom("Poppins", size: 16))
    //}
//}

//extension View {
 //   func momentumStyle() -> some View {
 //       self.modifier(MomentumStyle())
 //   }
//}

extension Text {
    func momentumStyle() -> some View {
        self
            .font(.custom("Poppins-Regular", size: 16))
            .foregroundColor(Color("Secondary"))
    }
}
