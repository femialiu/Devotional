//
//  DataLoader.swift
//  Devotional
//
//  Created by Femi Aliu on 11/10/2021.
//

import Foundation

public class DataLoader {
    
    let now = Date()
    let components = DateComponents()
    
    @Published var devotionalData = [Devotional]()
    
    init() {
        load()
        sort()
    }
    
    func load() {
        
        if let fileLocation = Bundle.main.url(forResource: "dataFile", withExtension: "json") {
            
            // do catch
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([Devotional].self, from: data)
                
                self.devotionalData = dataFromJson
            } catch {
                print(error)
            }
        }
    }
    
    func sort() {
        self.devotionalData = self.devotionalData.sorted(by: { $0.month < $1.month })
    }
    
}
