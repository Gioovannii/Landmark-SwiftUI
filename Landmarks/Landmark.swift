//
//  Landmark.swift
//  Landmark
//
//  Created by Giovanni Gaffé on 2021/7/30.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
