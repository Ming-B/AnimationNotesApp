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
        VStack {
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
                Text("blah")
            }
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
