//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    var name: String
    var running : Bool
    var currentLocation : String
    
   
    func start() -> Bool {
        running = false
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        var knownDestinations = distanceTo(from: currentLocation, target: destination)
        currentLocation = destination
        totalDistance = totalDistance + knownDistances
    }
    
    func distanceTo(from: String, target : String) -> Int {
        var data = AviatrixData()
        var from = currentLocation
        var distance = data.knownDistances[from]![target]!
        return distance
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
   
    init(userInput: String) {
        name = userInput
        running = false
        currentLocation = "SLC"
    
    }
   
}
