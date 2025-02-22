//
//  HomeView.swift
//  Fluxo
//
//  Created by Yashrajsinh Jadeja on 2025-02-22.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showPortfdolio: Bool = false
    
    
    var body: some View {
        ZStack{
            //Background Layer
            Color.theme.background
                .ignoresSafeArea()
            
            //Content layer
            VStack{
                //calling homeheader 
                homeheader
                
                Spacer(minLength: 0)
                
            }
            
        }
    }
}

#Preview {
    NavigationView{
        HomeView()
            .navigationBarHidden(true)
    }
    
}

extension HomeView{
    private var homeheader: some View{
        HStack{
            //Conditation for chnage views
            CircleButtonView(iconName: showPortfdolio ? "plus" : "info")
                .animation(.none)
                .background(
                    CircleButtonAnimationView(animate: $showPortfdolio)
                )
            Spacer()
            Text(showPortfdolio ? "Portfolio  💰" : "Stock Feed  📈")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
                .animation(.none)
            
            Spacer()
            //changing buttond depending on state
            CircleButtonView(iconName: showPortfdolio ? "arrow.forward" : "wallet.pass")
                .rotationEffect(Angle(degrees: showPortfdolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring){
                        showPortfdolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}
