//
//  DriverRow.swift
//  01-PrimeraAppUI
//
//  Created by Macabuku on 24/09/2019.
//  Copyright © 2019 com.jarr2300.kodi17. All rights reserved.
//

import SwiftUI
let Ancho = 450
let Alto = 100

struct DriverRow: View {
    
    var driver : Driver
    
    var body: some View {
        HStack {
            Image(driver.imageName)
                .resizable()
                .scaledToFit()
                .frame(width:75.0, height: 75)
                .clipShape(Circle())
                .background(Circle().foregroundColor(driver.team.color))
                .padding(.leading, 10)

                //.overlay(Circle().stroke(Color.white, lineWidth: 3))
                //.shadow(radius: 8)
          
            
            Text(driver.name)
                .font(.largeTitle)
                .minimumScaleFactor(0.2).lineLimit(/*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .padding(.trailing, 10)
            Spacer()
            
        }
       
    }
}

struct DriverRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack {        
            
            DriverRow(driver: drivers[0]).previewLayout(.fixed(width: CGFloat(Ancho), height: CGFloat(Alto)))

        }
    }
}
