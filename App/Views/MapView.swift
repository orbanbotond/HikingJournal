import MapKit
import SwiftUI

struct MapView: View {
    var viewModel: HikeViewModel

    var body: some View {
        Map {
            if let hike = viewModel.hike {
                Marker(hike.name, coordinate: hike.coordinate)
            }
        }
        .mapStyle(.hybrid(elevation: .realistic))
        .navigationTitle("Map")
        .clipped()
        .task {
            await viewModel.fetchCoordinates()
        }
    }
}

#Preview {
    let url = URL(string: "http://localhost:3000/hikes/3/map.json")!
    let viewModel = HikeViewModel(url: url)
    viewModel.hike = Hike(
        name: "Mount Tabor",
        latitude: 45.511881,
        longitude: -120.595706
    )
    
    return MapView(viewModel: viewModel)
}
