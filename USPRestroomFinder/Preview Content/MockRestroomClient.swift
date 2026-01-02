//
//  MockRestroomClient.swift
//  USPRestroomFinder
//
//  Created by joe on 1/2/26.
//

import Foundation

struct MockRestroomClient: HTTPClient {
    func fetchRestrooms(url: URL) async throws -> [Restroom] {
        return PreviewData.load(resourceName: "restrooms")
    }
}
