//
//  RestroomDetailView.swift
//  USPRestroomFinder
//
//  Created by joe on 1/5/26.
//

import SwiftUI

struct AmenitiesView: View {
    let restroom: Restroom
    
    var body: some View {
        HStack(spacing: 12) {
            AmenityView(symbol: "♿️", isEnabled: restroom.accessible)
            AmenityView(symbol: "🚻", isEnabled: restroom.unisex)
            AmenityView(symbol: "🚼", isEnabled: restroom.changingTable)
        }
    }
}

struct AmenityView: View {
    let symbol: String
    let isEnabled: Bool
    
    var body: some View {
        if isEnabled {
            Text(symbol)
        }
    }
}

struct RestroomDetailView: View {
    let restroom: Restroom
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(restroom.name)
                .font(.title3)
            Text(restroom.address)
            if let comment = restroom.comment {
                Text(comment)
                    .font(.caption)
            }
            
            AmenitiesView(restroom: restroom)
            ActionButtons(mapItem: restroom.mapItem)
        }
    }
}

#Preview {
    let restrooms: [Restroom] = PreviewData.load(resourceName: "restrooms")
    RestroomDetailView(restroom: restrooms[0])
}
