//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Xotech on 02/01/2024.
//

import Foundation


extension Bundle {
    
    func decode<T:Codable> (_ file : String ) -> T {
        
        
        //Step 01: Locate the file using URL. Otherwise through fatalError
        
        guard let url = url(forResource: file , withExtension: nil ) else {
            fatalError("Failed to locate \(file) in bundle Step 1 ")
        }
        
        //Step 02: Get the Data from File. File -> Data. For error through fatalError
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) in bundle Step 2 ")
        }
        
        //Step 03: Create Decoder
        let decoder = JSONDecoder()
        
        
        //Step 04: Parse Data. Using decode( decodableProtocolType, source )
        
        guard let parsedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to locate \(file) in bundle Step 4 ")
        }
        
        // Step 05: Return data
        return parsedData

    }
    
    
}
