//
//  UIComponet.swift
//  Pets
//
//  Created by Taciano Maximo dos Santos on 11/06/23.
//

import Foundation
import SwiftUI

protocol UIComponet {
    var uniqueId: String { get }
    func render() -> AnyView
}
