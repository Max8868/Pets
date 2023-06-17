//
//  ContentView.swift
//  Pets
//
//  Created by Taciano Maximo dos Santos on 11/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm: PetListVieModel

    init() {
        _vm = StateObject(wrappedValue: PetListVieModel(service: WebService()))
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(vm.components, id: \.uniqueId) { component in
                    component.render()
                }
                
                .navigationTitle("Pets")
            }.task {
                await vm.load()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
