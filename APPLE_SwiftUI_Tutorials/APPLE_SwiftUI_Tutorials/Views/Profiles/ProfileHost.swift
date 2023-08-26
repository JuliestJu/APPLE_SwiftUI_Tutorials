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
                if editMode?.wrappedValue == .active {
                    Button("Cancel") {
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear {
                        draftProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = draftProfile
                    }
            }
        }
        .padding()
    }
    
}

#Preview {
    ProfileHost()
        .environmentObject(ModelData())
}
