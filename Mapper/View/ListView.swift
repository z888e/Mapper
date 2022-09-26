//
//  ListView.swift
//  Mapper
//
//  Created by Zoé Hartman on 26/09/2022.
//

import SwiftUI

struct ListView: View {
    
    @State private var searchText = ""

    var searchResults: [Location] {
        if searchText.isEmpty {
            return locations
        } else {
            return locations.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        NavigationView {
            
            List(searchResults) {el in
                NavigationLink{LocationDetailsView(location: el)} label: {
                    LocationRowView(location: el)
                }
            }
                .searchable(text: $searchText, prompt: Text("Chercher..."))
                .navigationTitle("Espaces de coworking")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            ListView()
        }
    }
