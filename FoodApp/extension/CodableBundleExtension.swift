//
//  CodableBundleExtension.swift
//  FoodApp
//
//  Created by Sampel on 15/04/2023.
//

import Foundation

extension Bundle {
    func decode<T : Codable>(_ file : String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
            guard let data = try? Data(contentsOf: url) else {
                fatalError("Fatal to load \(file) from bundle")
            
            }
        let decorder = JSONDecoder()
            
        guard let decodedData = try? decorder.decode(T.self, from: data) else {
            fatalError("Failed  to decode \(file) from bundle")
        }
        
        return decodedData
    }
}
