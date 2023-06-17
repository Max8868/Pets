//
//  View+Extensions.swift
//  Pets
//
//  Created by Taciano Maximo dos Santos on 11/06/23.
//

import Foundation
import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}
