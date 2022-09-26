//
//  LocationDetailsView.swift
//  Mapper
//
//  Created by Zoé Hartman on 26/09/2022.
//

import SwiftUI
import MapKit

struct LocationDetailsView: View {
    
    var location: Location
//    @State var localMap = MKCoordinateRegion(center: location.lat, longitude: location.lon), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

    
//    init(location:Location){
//        localMap = MKCoordinateRegion(
//            center: CLLocationCoordinate2D(
//                latitude: location.lat,
//                longitude: location.lon),
//            span: MKCoordinateSpan(
//                latitudeDelta: 0.1,
//                longitudeDelta: 0.1)
//        )
//    }
    
    var body: some View {
        
        ScrollView{
            VStack{
//                Map(coordinateRegion: $localMap)
                }
            Text(location.name)
            }
        }
    }


struct LocationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailsView(location: locations[0])
    }
}
