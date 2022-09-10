//
//  SplashScreenView.swift
//  splashscreen
//
//  Created by Aman Negi on 10/09/22.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var isActive: Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.4
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                Color.black.opacity(0.7).ignoresSafeArea()
                VStack {
                    Image(systemName: "applelogo").resizable()
                        .scaledToFit()
                        .foregroundColor(.black)
                        .frame(width: 200, height: 200, alignment: .center)
                    Text("Splash screen demo").font(.largeTitle)
                        .foregroundColor(.black)
                        .padding(.top, 40)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 0.7)) {
                        self.size = 1.1
                        self.opacity = 1.0
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
