//
//  ModelData.swift
//  OldGrowth
//
//  Created by Tyson Lupul on 2023-02-13.
//

import Foundation

var places: [Place] = load("placesData.json")

func load<T: Decodable>(_ filename:String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Resource '\(filename)' not found from main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Resource '\(filename)' not loaded from main bundle.")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Resource '\(filename)' not parsed as \(T.self) from main bundle.\n\(error)")
    }
}
