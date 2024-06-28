//
//  ContentView.swift
//  CustomModifiers
//
//  Created by Muneesh Kumar on 26/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Button 1") {
               print("Tapped")
            }
            .primaryButtonStyle()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct PrimaryButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
    content
            .padding()
            .background(Color.blue)
            .foregroundStyle(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 20.0))
            .shadow(radius: 5)
    }
}


extension View {
    func primaryButtonStyle() -> some View {
        self.modifier(PrimaryButtonStyle())
    }
}
