//
//  ScreenModel.swift
//  Pets
//
//  Created by Taciano Maximo dos Santos on 11/06/23.
//

import Foundation

enum ComponetError: Error {
    case decodingError
}

enum ComponenType: String, Decodable {
    case featuredImage
}

struct ComponentModel: Decodable {
    let type: ComponenType
    let data: [String: String]
}

struct ScreenModel: Decodable {
    let pageTitle: String
    let components: [ComponentModel]
}

extension ScreenModel {
    func buildComponents() throws -> [UIComponet] {
        
        var components: [UIComponet] = []
        
        for component in self.components {
            switch component.type {
            case.featuredImage:
                guard let uiModel: FeaturedImageUIModel = component.data.decode() else {
                    throw ComponetError.decodingError
                }
                components.append(FeaturedImageComponent(uiModel: uiModel))
            }
        }
        
        return components
    }
}
