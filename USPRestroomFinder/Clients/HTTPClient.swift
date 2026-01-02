//
//  HTTPClient.swift
//  USPRestroomFinder
//
//  Created by joe on 1/2/26.
//

import Foundation

protocol HTTPClient {
    func fetchRestrooms(url: URL) async throws -> [Restroom]
}
