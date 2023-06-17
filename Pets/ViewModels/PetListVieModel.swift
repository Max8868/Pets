//
//  PetListVieModel.swift
//  Pets
//
//  Created by Taciano Maximo dos Santos on 11/06/23.
//

import Foundation

@MainActor
class PetListVieModel: ObservableObject {
    
    private var service: WebService
    @Published var components: [UIComponet] = []
    init(service: WebService) {
        self.service = service
    }
    
    func load() async {
        
        do {
            let screenModel = try await service.load(resource: Constants.Urls.petListeng)
            components = try screenModel.buildComponents()
            
        } catch {
            print(error)
        }
        
    }
}
