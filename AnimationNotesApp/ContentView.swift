//
//  ContentView.swift
//  AnimationNotesApp
//
//  Created by Ming Bian on 3/4/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    @State private var chevronRotate = 0.0
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            HStack {
                Button("", systemImage: "chevron.right") {
                    withAnimation {
                        showDetails.toggle()
                        if showDetails {
                            chevronRotate = 90.0
                        }
                        else {
                            chevronRotate = 0.0
                        }
                    }


                }
                .rotationEffect(.degrees(chevronRotate))
                
                Text("Animation Notes")
                    .font(.headline)
                Spacer()
            }
            
            if showDetails {
                Text("There are two primary types of animations in SwiftUI: explicit and implicit. Explicit are primarily done with `withAnimation`, while implicit are done with `animation()` *Emphasis*")
            }
            
            HStack {
                Text("more notes")
                    .font(.headline)
                Spacer()
            }
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
