//
//  SliderColorView.swift
//  ColorizedAppSwiftUI
//
//  Created by Анастасия Булдакова on 14.01.2023.
//

import SwiftUI

struct SliderColorView: View {
    
    @Binding var value: Double
    @State private var text = ""
        
    let color: Color
    
    var body: some View {
        HStack {
            Text(value.formatted())
                .foregroundColor(.black)
                .frame(width: 35, alignment: .leading)
            Slider(value: $value, in: 0...255, step: 1) 
                .tint(color)
                .onChange(of: value) { newValue in
                    text = newValue.formatted()
                }
           TextFieldView(text: $text, value: $value)
        }
        .onAppear {
            text = value.formatted()
        }
    }
}

struct SliderColorView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            SliderColorView(value: .constant(100), color: .red)
        }
    }
}
