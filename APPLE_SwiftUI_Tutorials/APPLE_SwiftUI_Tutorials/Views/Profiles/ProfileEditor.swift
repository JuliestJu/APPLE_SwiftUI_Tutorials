//
//  ProfileEditor.swift
//  APPLE_SwiftUI_Tutorials
//
//  Created by Юлія Воротченко on 26.08.2023.
//

import SwiftUI

struct ProfileEditor: View {
    
    @Binding var profile: Profile
    
    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                Divider()
                TextField("Username", text: $profile.username)
            }

        }
    }
}

#Preview {
    ProfileEditor(profile: .constant(Profile.default))
}
