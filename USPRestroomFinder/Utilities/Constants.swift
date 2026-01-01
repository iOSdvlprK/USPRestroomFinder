//
//  Constants.swift
//  USPRestroomFinder
//
//  Created by joe on 1/1/26.
//

import Foundation

struct Constants {
    struct Urls {
        static func restroomsByLocation(latitude: Double, longitude: Double) -> URL {
            return URL(string: "https://refugerestrooms.org/api/v1/restrooms/by_location?lat=\(latitude)&lng=\(longitude)")!
        }
    }
}
