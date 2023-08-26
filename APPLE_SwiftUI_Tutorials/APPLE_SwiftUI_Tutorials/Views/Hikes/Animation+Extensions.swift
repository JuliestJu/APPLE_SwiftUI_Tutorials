//
//  Animation+Extensions.swift
//  APPLE_SwiftUI_Tutorials
//
//  Created by Юлія Воротченко on 25.08.2023.
//

import SwiftUI

extension Animation {
    static func ripple(_ index: Int) -> Animation {
        Animation.spring(dampingFraction: 0.1)
            .speed(2)
            .delay(0.03 * Double(index))
    }
}
