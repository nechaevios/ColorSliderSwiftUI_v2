//
//  SliderView.swift
//  ColorSliderSwiftUI
//
//  Created by Nechaev Sergey  on 30.10.2021.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    
    let color: Color
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .none
        return formatter
    }()
    
    var body: some View {
        HStack {
            Text("\(lround(value))").foregroundColor(.white)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
            TextField("", value: $value, formatter: formatter)
                .frame(width: 40)
                .padding(4)
                .background(.white)
                .cornerRadius(4)
                .keyboardType(.decimalPad)
        }
        
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            SliderView(value: .constant(55), color: .red)
        }
    }
}
