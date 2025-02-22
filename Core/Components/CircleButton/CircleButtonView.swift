//
//  CircleButtonView.swift
//  Fluxo
//
//  Created by Yashrajsinh Jadeja on 2025-02-22.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName: String
    
    var body: some View {
        //Side button
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(.red)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50,height: 50)
            .background(
                Circle()
                    .foregroundColor(Color.theme.background)
            )
            .shadow(
                color: Color.theme.accent.opacity(0.25),
                radius: 10, x: 0, y:0)
            .padding()
            
    }
}

#Preview {
    Group{
        CircleButtonView(iconName: "info")
            .padding()
            .previewLayout(.sizeThatFits)
        
        //Dark mode
        CircleButtonView(iconName: "plus")
            .padding()
            .previewLayout(.sizeThatFits)
            .colorScheme(.dark)
    }
    
}
