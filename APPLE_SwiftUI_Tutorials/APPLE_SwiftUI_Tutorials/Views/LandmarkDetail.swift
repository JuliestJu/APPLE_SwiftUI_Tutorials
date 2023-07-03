//
//  LandmarkDetail.swift
//  APPLE_SwiftUI_Tutorials
//
//  Created by Юлія Воротченко on 29.06.2023.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landMark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: self.landMark.locationCoordinates)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            CircleImage(image: self.landMark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(self.landMark.name)
                        .font(.title)
                HStack {
                    Text(landMark.park)
                    Spacer()
                    Text(self.landMark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About \(self.landMark.name)")
                    .font(.title2)
                Text(self.landMark.description)
                     
            }
            .padding()
        }
        .navigationTitle(self.landMark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landMark: ModelData().landmarks[0])
    }
}
