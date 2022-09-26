//
//  MapView.swift
//  Mapper
//
//  Created by Zoé Hartman on 26/09/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 48.856614,
            longitude: 2.34),
        span: MKCoordinateSpan(
            latitudeDelta: 0.1,
            longitudeDelta: 0.1)
    )
    
    var body: some View {
        
        NavigationView {
            ZStack(alignment:.bottomTrailing){
                Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: .none, annotationItems: locations) { el in
                    
                    MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: el.coordinate.latitude, longitude: el.coordinate.longitude)){
                        
                        NavigationLink(destination: LocationDetailsView(location: el)){
                            VStack(alignment: .center, spacing: 3){
                                Text(el.name)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.accentColor)
                                ZStack{
                                    Circle().foregroundColor(Color.accentColor).frame(width: 30)
                                    Image(systemName: {
                                        if el.wifi == true {return "wifi"}
                                        else {return "wifi.slash"}
                                    }()).frame(width: 15)
                                        .foregroundColor(Color.white).opacity(0.97)
                                }
                            }
                        }
                    }
                }.edgesIgnoringSafeArea(.top)
                VStack{
                    Button {
                        region.span.latitudeDelta *= 0.8
                        region.span.longitudeDelta *= 0.8
                    } label: {
                        ZStack{
                            Image(systemName: "plus.square.fill")
                                .font(.system(size: 40))
                                .foregroundColor(Color.accentColor)
                        }
                    }
                    Button {
                        region.span.latitudeDelta *= 1.2
                        region.span.longitudeDelta *= 1.2
                    } label: {
                        ZStack{
                            Image(systemName: "minus.square.fill")
                                .font(.system(size: 40))
                                .foregroundColor(Color.accentColor)
                        }
                    }
                }.padding(5)
                    .padding(.bottom, 20)
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
