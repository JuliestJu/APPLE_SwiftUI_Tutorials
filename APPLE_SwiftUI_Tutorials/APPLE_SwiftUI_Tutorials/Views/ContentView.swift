//
//  ContentView.swift
//  APPLE_SwiftUI_Tutorials
//
//  Created by Юлія Воротченко on 26.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
