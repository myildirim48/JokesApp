//
//  ContentView.swift
//  JokesApp
//
//  Created by YILDIRIM on 12.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
        
        NavigationView {
            List(jokesVM.jokes) { element in
                Text(element.joke)
            }.toolbar(content: {
                Button(action: addJoke) {
                    Text("Get New Joke")
                }
            })
            .navigationTitle("Jokes App")
        }
        
    }
    
    func addJoke() {
        jokesVM.getJokes(count: 1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
