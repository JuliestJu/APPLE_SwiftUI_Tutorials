//
//  CircleImage.swift
//  APPLE_SwiftUI_Tutorials
//
//  Created by Юлія Воротченко on 26.06.2023.
//

import SwiftUI

struct CircleImage: View {
    let imgUrl = URL(string: "https://picsum.photos/300")!
    var image: Image
    
    var body: some View {
        self.image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
