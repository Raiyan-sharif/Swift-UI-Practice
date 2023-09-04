//
//  MyTabView.swift
//  LittleLemon
//
//  Created by BJIT on 1/9/23.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        TabView{
            Text("Home Page")
                .font(.title)
                .tabItem {
                    Label("Home",
                    systemImage: "house")
                }
            Text("Menu Page")
                .font(.title)
                .tabItem {
                    Label("Menu", systemImage: "menucard")
                }
        }
        
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
