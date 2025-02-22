//
//  Color.swift
//  Fluxo
//
//  Created by Yashrajsinh Jadeja on 2025-02-22.
//

import Foundation
import SwiftUI

extension Color {
    //Calling Colortheme for global access
    static let theme = ColorTheme()
  
}

//Struct for colors
struct ColorTheme {
    
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
    
}
