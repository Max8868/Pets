//
//  FeaturedImageComponent.swift
//  Pets
//
//  Created by Taciano Maximo dos Santos on 11/06/23.
//

import Foundation
import SwiftUI

struct FeaturedImageComponent: UIComponet {
    
    let uiModel: FeaturedImageUIModel
    
    var uniqueId: String {
        return ComponenType.featuredImage.rawValue
    }
    
    func render() -> AnyView {
        
        Image(systemName: uiModel.imgUrl)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .toAnyView()
        
//        AsyncImage(url: uiModel.imgUrl) { image in
//            image.resizable()
//
//        } placeholder: {
//            ProgressView()
//        }.toAnyView()
     }

}
