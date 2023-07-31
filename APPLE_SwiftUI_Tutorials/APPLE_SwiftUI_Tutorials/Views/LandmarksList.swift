//
//  LandmarksList.swift
//  APPLE_SwiftUI_Tutorials
//
//  Created by Юлія Воротченко on 29.06.2023.
//

import SwiftUI


struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { (!showFavoritesOnly || $0.isFavorite) }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landMark: landmark)
                    } label: {
                        LandMarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        LandmarkList().environmentObject(modelData)
    }
}
