//
//  Location.swift
//  BucketList
//
//  Created by David Hernandez on 20/09/24.
//

import Foundation
import MapKit

struct Location: Codable, Equatable, Identifiable {
    //Takes CLLocationCoordinate2D out of contentview
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    //Hides this example from final release. 
    #if DEBUG
    //example property. Good practice.
    static let example = Location(id: UUID(), name: "Buckingham Palace", description: "Lit by over 40,000 lightbulbs.", latitude: 51.501, longitude: -0.141)
    #endif
    
    var id: UUID
    var name: String
    var description: String
    var latitude: Double
    var longitude: Double
    
    //Custom == function
    static func ==(lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
