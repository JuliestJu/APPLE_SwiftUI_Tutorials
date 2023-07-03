//
//  APPLE_SwiftUI_TutorialsApp.swift
//  APPLE_SwiftUI_Tutorials
//
//  Created by Юлія Воротченко on 26.06.2023.
//

import SwiftUI
//@main -- the app’s entry point
@main
struct APPLE_SwiftUI_TutorialsApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
