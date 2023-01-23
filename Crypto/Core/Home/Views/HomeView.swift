//
//  HomeView.swift
//  Crypto
//
//  Created by Piyush Singh on 22/01/23.
//

import SwiftUI

struct HomeView: View {
    @State private var showPortfolio:Bool = false
    var body: some View {
        ZStack{
            //background layer
            Color.theme.background
                .ignoresSafeArea()
            
            //Content layer
            VStack{
                
                homeHeader
                
                .padding(.horizontal)
                Spacer(minLength: 0)
                
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            HomeView()
                .navigationBarHidden(true)
        }
    }
}

extension HomeView {
    
    private var homeHeader: some View {
        
        HStack{
            CircleButtonVIew(iconName: showPortfolio ? "plus" : "info")
            
            Spacer()
            Text(showPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
            Spacer()
            CircleButtonVIew(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 :0))
                .onTapGesture {
                    showPortfolio.toggle()
                }
        }
        
    }
}
