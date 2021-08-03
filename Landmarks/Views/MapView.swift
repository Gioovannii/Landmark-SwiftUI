//
//  MapView.swift
//  Landmark
//
//  Created by Giovanni Gaffé on 2021/7/30.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    // @State to etablish a source of truth for data that can modify on others views
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        // $ => pass a binding like a reference to the underlying value
        Map(coordinateRegion: $region)
            .onAppear() {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
