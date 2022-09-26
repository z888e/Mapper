//
//  ContentView.swift
//  Mapper
//
//  Created by Zoé Hartman on 26/09/2022.
//

import SwiftUI

struct ContentView: View {
            
    var body: some View {
        TabView {
            MapView()
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Carte")
                }
            ListView()
                .tabItem {
                    Image(systemName: "list.triangle")
                    Text("Liste")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
