//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by BJIT on 29/8/23.
//

import SwiftUI

struct ContentView: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        VStack {
            //Gradient Color
            Text("iOS")
                .font(.system(size: 180))
                .fontWeight(.black)
                .foregroundStyle(
                    LinearGradient(colors: [.pink, .purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                )


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

            // Load Image URL

//            AsyncImage(url: URL(string: imageURL))

//            AsyncImage(url: URL(string: imageURL), scale: 3.0)
            // Async image placeholter

//            AsyncImage(url: URL(string: imageURL)){image in
//                image
//                    .imageModifier()
//            }placeholder: {
//                Image(systemName: "photo.circle.fill")
//                    .iconModifier()
//
//            }
//            .padding(40)

            // Phase
//            AsyncImage(url: URL(string: imageURL)){
//                phase in
//                // Sucess : The image successfully loaded
//                // FAILURE: The image failed to load with an error.
//                // EMPTY: No image is loaded.
//                if let image = phase.image{
//                    image.imageModifier()
//                }else if phase.error != nil{
//                    Image(systemName: "ant.circle.fill").iconModifier()
//                }else{
//                    Image(systemName: "photo.circle.fill").iconModifier()
//                }
//            }
//            .padding(40)

            // Animation Async Image
            AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))){
                phase in
                switch phase{
                case .success(let image):
                    image.imageModifier()
//                        .transition(.move(edge: .bottom))
//                        .transition(.slide)
                        .transition(.scale)
                case .failure(_):
                    Image(systemName: "ant.circle.fill").iconModifier()
                case .empty:
                    Image(systemName: "photo.circle.fill").iconModifier()
                @unknown default:
                    ProgressView()
                }
            }
            .padding(40)



        }
        .padding()
    }
}

extension Image{
    func imageModifier() -> some View{
        self
            .resizable()
            .scaledToFit()
    }

    func iconModifier() -> some View{
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
