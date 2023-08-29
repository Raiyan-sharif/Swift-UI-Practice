//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by BJIT on 29/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Link("Go to Apple",
            destination: URL(string: "https://apple.com")!)
            .buttonStyle(.borderless)

            Link("Call To Action",
            destination: URL(string: "tel:1234567890")!)
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.regular)

            Link("Send am Email",
            destination: URL(string: "mailto:raiyan.sharif.1234@gmail.com")!)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .tint(.pink)

            Link("Credo Academy",
            destination: URL(string: "https://credo.academy")!)
            .buttonStyle(.plain)
            .padding()
            .border(.primary, width: 2)

            Link(destination: URL(string: "https://apple.com")!){
                HStack(spacing: 16){
                    Image(systemName: "apple.logo")
                    Text("Apple Store")
                }
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(
                    Capsule().fill(Color.blue)
                )
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
