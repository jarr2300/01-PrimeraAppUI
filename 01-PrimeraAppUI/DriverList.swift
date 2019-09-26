//
//  DriverList.swift
//  01-PrimeraAppUI
//
//  Created by Macabuku on 24/09/2019.
//  Copyright © 2019 com.jarr2300.kodi17. All rights reserved.
//

import SwiftUI

struct DriverList: View {
    var body: some View {
        NavigationView{
        List(drivers) {
            driver in
            
            NavigationLink(destination: DriverDetail(driver: driver)) {
                DriverRow(driver: driver)
            }

            
                //DriverRow(driver: driver)
            }.navigationBarTitle("Formula 1 - 2019")
    }
}
}

struct DriverList_Previews: PreviewProvider {
    static var previews: some View {
        DriverList()
    }
}
 
