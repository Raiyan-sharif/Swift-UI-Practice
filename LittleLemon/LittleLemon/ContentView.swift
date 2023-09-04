//
//  ContentView.swift
//  LittleLemon
//
//  Created by BJIT on 1/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Exersise 1")
                NavigationLink {
                    MyTabView()
                } label: {
                    Text("Do Something")
                }
                .navigationTitle("Little Lemon")

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
