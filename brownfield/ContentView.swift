//
//  ContentView.swift
//  brownfield
//
//  Created by Frank Calise on 1/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var showView = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button {
                print("Button Pressed")
                showView.toggle()
            } label: {
                Text("Present RN Screen")
                    .font(.title2)
                    .padding()
                    .padding(.horizontal)
            }
            .buttonStyle(.borderedProminent)
            
            .fullScreenCover(isPresented: $showView) {
                RNHostView()
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
