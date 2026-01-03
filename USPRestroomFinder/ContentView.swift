//
//  ContentView.swift
//  USPRestroomFinder
//
//  Created by joe on 12/28/25.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @Environment(\.httpClient) private var restroomClient
    @State private var locationManager = LocationManager.shared
    @State private var restrooms: [Restroom] = []
    @State private var selectedRestroom: Restroom?
    
    private func loadRestrooms() async {
        guard let region = locationManager.region else { return }
        let coordinate = region.center
        
        do {
            restrooms = try await restroomClient.fetchRestrooms(url: Constants.Urls.restroomsByLocation(latitude: coordinate.latitude, longitude: coordinate.longitude))
        } catch {
            print(error.localizedDescription)
        }
    }
    
    var body: some View {
        ZStack {
            Map {
                ForEach(restrooms) { restroom in
                    Annotation(restroom.name, coordinate: restroom.coordinate) {
                        Text("🚻")
                            .scaleEffect(selectedRestroom == restroom ? 2.0 : 1.0)
                            .font(.title)
                            .onTapGesture {
                                withAnimation {
                                    selectedRestroom = restroom
                                }
                            }
                            .animation(.spring(duration: 0.25), value: selectedRestroom)
                    }
                }
                
                UserAnnotation()
            }
        }
        .task(id: locationManager.region) {
            await loadRestrooms()
        }
    }
}

#Preview {
    ContentView()
        .environment(\.httpClient, MockRestroomClient())
}
