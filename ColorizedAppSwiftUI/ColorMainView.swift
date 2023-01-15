//
//  ColorMainView.swift
//  ColorizedAppSwiftUI
//
//  Created by Анастасия Булдакова on 14.01.2023.
//

import SwiftUI

struct ColorMainView: View {
    
    var red: Double
    var green: Double
    var blue: Double
    
    var body: some View {
        Color(red: red / 255,
              green: green / 255,
              blue: blue / 255)
        .frame(width: 350, height: 150)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke(Color.black, lineWidth: 4))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorMainView(red: 100, green: 200, blue: 255)
    }
}
