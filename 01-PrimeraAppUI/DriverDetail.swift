//
//  DriverDetail.swift
//  01-PrimeraAppUI
//
//  Created by Macabuku on 21/09/2019.
//  Copyright © 2019 com.jarr2300.kodi17. All rights reserved.
//

import SwiftUI

struct DriverDetail: View {
    
    var driver : Driver
    
    var body: some View {
        VStack {
            Image(driver.team.imageName)
                //.padding(.top, -10)
                
                //.frame(height : 230.0)
                
                .resizable()
                .aspectRatio(contentMode: .fill)
                //.cornerRadius(15)
                //.offset( y: -8)
            //.clipShape(Circle())
                
            
            Image(driver.imageName)
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 18)
                .offset(x: 0, y: -90)
                .padding(.bottom, -75)
            Text(driver.name)
                .font(.system(size: 40))
                
                
            StatsRow(StatKey: "Edad", StatValue: String(driver.age))
            StatsRow(StatKey: "Número", StatValue: String(driver.number))
            StatsRow(StatKey: "Origen", StatValue: driver.birthPlace)
            Spacer()
            
            
            
        }.edgesIgnoringSafeArea(.top)
        
    }
}

struct DriverDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DriverDetail(driver: drivers[6])
                .previewDevice("iPhone SE")
                .previewDisplayName("Tamaño mínimo")

            
            DriverDetail(driver: drivers[6]).previewDevice("iPhone 11 Pro")
        }
    }
}
