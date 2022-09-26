//
//  LocationRowView.swift
//  Mapper
//
//  Created by Zoé Hartman on 26/09/2022.
//

import SwiftUI

struct LocationRowView: View {
    
    var location: Location

    var body: some View {
        HStack{
            Image(systemName: "house.fill")
            Image(systemName: {
                if location.wifi == true {return "wifi"}
                else {return "wifi.slash"}
            }())
            Text(location.name)
        }.opacity(0.7)
        .padding(.vertical, 30)
        .padding(.horizontal, 15)
    }
}

struct LocationRowView_Previews: PreviewProvider {
    static var previews: some View {
        LocationRowView(location: locations[0])
    }
}
