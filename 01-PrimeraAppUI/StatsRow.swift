//
//  StatsRow.swift
//  01-PrimeraAppUI
//
//  Created by Macabuku on 23/09/2019.
//  Copyright © 2019 com.jarr2300.kodi17. All rights reserved.
//

import SwiftUI

struct StatsRow: View {
    
    var StatKey : String
    var StatValue : String
    
    var body: some View {
        HStack(alignment: .center) {
            Text(StatKey + ":")
                .font(.system(size:30))
                .fontWeight(.bold)
                .padding(.leading, 30)
            Text(StatValue)
                .font(.system(size:30))
                .fontWeight(.ultraLight)
                .minimumScaleFactor(0.5).lineLimit(/*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                //.multilineTextAlignment(.trailing)
                .padding(.trailing, 30)
            
            Spacer()
            
        }.minimumScaleFactor(0.5).lineLimit(/*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .padding(.horizontal)
    }
}
//*
struct StatsRow_Previews: PreviewProvider {
    static var previews: some View {
        StatsRow(StatKey: "Edad", StatValue: "31")
    }
}
//*/
