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
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
