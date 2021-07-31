//
//  MapView.swift
//  Landmark
//
//  Created by Giovanni Gaffé on 2021/7/30.
//

import SwiftUI
import MapKit

struct MapView: View {
    // @State to etablish a source of truth for data that can modify on others views
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))

}
