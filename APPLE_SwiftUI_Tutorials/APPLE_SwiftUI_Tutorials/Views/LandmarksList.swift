//
//  LandmarksList.swift
//  APPLE_SwiftUI_Tutorials
//
//  Created by Юлія Воротченко on 29.06.2023.
//

import SwiftUI


struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landMark: landmark)
                } label: {
                    LandMarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
