//
//  Record.swift
//  HWToDoList
//
//  Created by Chang Sophia on 4/24/19.
//  Copyright © 2019 Chang Sophia. All rights reserved.
//

import Foundation


struct Record: Codable {
   var title: String
  
    static let documentDicrectoy = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let key = "record"

    static func saveToFile(records: [Record]) {
        
        let propertyEncoder = PropertyListEncoder()
        
        if let data = try? propertyEncoder.encode(records) {
            let url = Record.documentDicrectoy.appendingPathComponent(key)
            try? data.write(to: url)
        }
}

    static func readFromFile() -> [Record]? {
        let propertyDecoder = PropertyListDecoder()
        
        let url = Record.documentDicrectoy.appendingPathComponent(key)
        if let data = try? Data(contentsOf: url), let records = try?
            propertyDecoder.decode([Record].self, from: data) {
            return records
            
        } else {
            return nil
        }
        
    }
    static func deleteFile() {
        do {
            let url = Record.documentDicrectoy.appendingPathComponent(key)
            try FileManager.default.removeItem(at: url)
        } catch {
            print(error.localizedDescription)
        }
    }
    
}
