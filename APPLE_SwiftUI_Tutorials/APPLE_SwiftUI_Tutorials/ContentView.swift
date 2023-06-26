//
//  ContentView.swift
//  APPLE_SwiftUI_Tutorials
//
//  Created by Юлія Воротченко on 26.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                    .font(.title)
                    .padding()
                .foregroundColor(.red)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
