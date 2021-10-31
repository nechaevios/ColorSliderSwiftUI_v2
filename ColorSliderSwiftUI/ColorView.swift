//
//  ColorView.swift
//  ColorSliderSwiftUI
//
//  Created by Nechaev Sergey  on 31.10.2021.
//

import SwiftUI

struct ColorView: View {
    let redColorValue: Double
    let greenColorValue: Double
    let blueColorValue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
                   .foregroundColor(Color(
                    red: redColorValue / 255,
                    green: greenColorValue / 255,
                    blue: blueColorValue / 255
                   ))
                   .frame(height: 150)
                   .overlay(RoundedRectangle(cornerRadius: 30)
                               .stroke(Color.white, lineWidth: 4))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(
            redColorValue: 2.0,
            greenColorValue: 60.0,
            blueColorValue: 90.0
        )
    }
}
