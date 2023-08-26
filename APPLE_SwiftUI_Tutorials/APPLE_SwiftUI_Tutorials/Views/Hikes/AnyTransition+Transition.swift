//
//  AnyTransition+Transition.swift
//  APPLE_SwiftUI_Tutorials
//
//  Created by Юлія Воротченко on 25.08.2023.
//

import SwiftUI

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        .asymmetric(
            insertion: .move(edge: .trailing)
                .combined(with: .opacity),
            removal: .scale.combined(with: .opacity)
        )
    }
}
