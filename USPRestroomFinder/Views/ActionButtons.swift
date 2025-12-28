//
//  ActionButtons.swift
//  USPRestroomFinder
//
//  Created by joe on 12/28/25.
//

import SwiftUI
import MapKit

struct ActionButtons: View {
    let mapItem: MKMapItem
    
    var body: some View {
        HStack {
            Button(action: {
                MKMapItem.openMaps(with: [mapItem])
            }, label: {
                HStack {
                    Image(systemName: "car.circle.fill")
                    Text("Take me there")
                }
            }).buttonStyle(.bordered)
                .tint(.green)
            
            Spacer()
        }
    }
}
