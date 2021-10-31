//
//  ContentView.swift
//  ColorSliderSwiftUI
//
//  Created by Nechaev Sergey  on 30.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(red: 30 / 255, green: 90 / 255, blue: 190 / 255)
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                ColorView(
                    redColorValue: redSliderValue,
                    greenColorValue: greenSliderValue,
                    blueColorValue: blueSliderValue
                )
                
                VStack {
                    SliderView(value: $redSliderValue, color: .red)
                    SliderView(value: $greenSliderValue, color: .green)
                    SliderView(value: $blueSliderValue, color: .blue)
                }
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") { hideKeyboard() }
                    }
                }
                
                Spacer()
                
            }
            .padding()
            
        }
        .onTapGesture {
            hideKeyboard()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
