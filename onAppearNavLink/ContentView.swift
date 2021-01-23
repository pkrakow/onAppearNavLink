//
//  ContentView.swift
//  onAppearNavLink
//
//  Created by Paul on 1/23/21.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Text("Welcome View")
                .font(.largeTitle)
                .underline()
                .padding()
        }
    }
}

struct ContentView: View {
    @State private var selection: String? = nil
    
    var body: some View {
        NavigationView {
            VStack(spacing:30) {
                NavigationLink(destination: Text("Second View"), tag: "Second", selection: $selection) { EmptyView() }
                NavigationLink(destination: Text("Third View"), tag: "Third", selection: $selection) { EmptyView() }
                NavigationLink(destination: WelcomeView(), tag: "Welcome", selection: $selection) { EmptyView() }
                Button("Tap to show Second") {
                    // Put whatever code you want here to process things before changing views
                    self.selection = "Second"
                }
                Button("Tap to show Third") {
                    // Put whatever code you want here to process things before changing views
                    self.selection = "Third"
                }
                Button("Tap to show Welcome") {
                    // Put whatever code you want here to process things before changing views
                    self.selection = "Welcome"
                }
            }
            .navigationBarTitle("Main Page")
            .onAppear() {
                print("onAppear Fired")
                self.selection = "Welcome"
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
