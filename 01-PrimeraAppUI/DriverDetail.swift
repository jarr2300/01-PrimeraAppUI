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
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 18)
                .offset(x: 0, y: -65)
                .padding(.bottom, -55)
            
            
            Text(driver.name)
                .font(.system(size: 45))
                .fontWeight(.bold)
               .minimumScaleFactor(0.5).lineLimit(/*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
               // .padding(.horizontal)
            
                
                
            StatsRow(StatKey: "Edad", StatValue: String(driver.age))
             //   .minimumScaleFactor(0.5)
              //  .padding(.horizontal)
            StatsRow(StatKey: "Número", StatValue: String(driver.number))
              //  .minimumScaleFactor(0.5)
              //  .padding(.horizontal)
            StatsRow(StatKey: "Origen", StatValue: driver.birthPlace)
               // .minimumScaleFactor(0.5).lineLimit(/*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
               // .padding(.horizontal)
            Spacer()
            
            
            
        }.edgesIgnoringSafeArea(.top)
        
    }
}

struct DriverDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DriverDetail(driver: drivers[0])
                .previewDevice("iPhone SE")
                .environment(\.sizeCategory, .extraLarge)
                .previewDisplayName("Tamaño mínimo")

            
            DriverDetail(driver: drivers[0])
                .previewDevice("iPhone 11 Pro Max")
                .environment(\.sizeCategory, .extraExtraLarge)
                .previewDisplayName("Tamaño máximo")
        }
    }
}
