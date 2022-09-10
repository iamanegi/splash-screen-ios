//
//  ContentView.swift
//  splashscreen
//
//  Created by Aman Negi on 10/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            Text("Welcome to Dashboard")
                .fontWeight(.bold)
                .font(.title3)
                .foregroundColor(.white)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
