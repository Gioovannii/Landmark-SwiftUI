//
//  ModelData.swift
//  Landmarks
//
//  Created by Giovanni Gaffé on 2021/7/31.
//

import Foundation

func load<T: Decodable>(fileName: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else { fatalError("Couldn't find \(fileName) in main bundle") }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(fileName) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(fileName) as \(T.self): \n\(error)")
    }
    
}
