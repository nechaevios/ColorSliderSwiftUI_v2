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
    
    var body: some View {
        HStack {
            Text("\(lround(value))").foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .frame(width: 40)
                .lineLimit(1)
                
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
            
            TextField("0", text: Binding(
                get: { String(format: "%.0f", value) },
                set: { value = Double($0) ?? 0 }
            ))
                .multilineTextAlignment(.trailing)
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
