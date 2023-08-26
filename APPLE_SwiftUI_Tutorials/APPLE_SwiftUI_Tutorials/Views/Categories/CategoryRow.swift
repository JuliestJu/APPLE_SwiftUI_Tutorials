//
//  CategoryRow.swift
//  APPLE_SwiftUI_Tutorials
//
//  Created by Юлія Воротченко on 26.08.2023.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        Text(categoryName)
            .font(.headline)
    }
}

#Preview {
    var landmarks = ModelData().landmarks
    return CategoryRow(categoryName: landmarks[0].category.rawValue,
                       items: Array(landmarks.prefix(3)))
}
