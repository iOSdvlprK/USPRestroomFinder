//
//  RestroomDetailView.swift
//  USPRestroomFinder
//
//  Created by joe on 1/5/26.
//

import SwiftUI

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
        }
    }
}

#Preview {
    let restrooms: [Restroom] = PreviewData.load(resourceName: "restrooms")
    RestroomDetailView(restroom: restrooms.first!)
}
