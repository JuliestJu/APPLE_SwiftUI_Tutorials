//
//  ProfileHost.swift
//  APPLE_SwiftUI_Tutorials
//
//  Created by Юлія Воротченко on 26.08.2023.
//

import SwiftUI

struct ProfileHost: View {
    
    @EnvironmentObject var modelData: ModelData
    @Environment(\.editMode) var editMode
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                EditButton()
            }
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
            }
        }
        .padding()
    }
    
}

#Preview {
    ProfileHost()
        .environmentObject(ModelData())
}
