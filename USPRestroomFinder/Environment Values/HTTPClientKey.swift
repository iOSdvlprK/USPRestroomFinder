//
//  HTTPClientKey.swift
//  USPRestroomFinder
//
//  Created by joe on 12/31/25.
//

import SwiftUI

private struct HTTPClientKey: EnvironmentKey {
    static var defaultValue: HTTPClient = RestroomClient()
}

extension EnvironmentValues {
    var httpClient: HTTPClient {
        get { self[HTTPClientKey.self] }
        set { self[HTTPClientKey.self] = newValue }
    }
}
