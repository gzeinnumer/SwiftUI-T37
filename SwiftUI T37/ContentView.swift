//
//  ContentView.swift
//  SwiftUI T37
//
//  Created by M Fadli Zein on 24/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        ZStack{
            Text("View Transition")
                .padding()
                .background(Capsule().stroke())
                .onTapGesture {
                    withAnimation(.spring()){
                        show.toggle()
                    }
                }
            if show {
                NewView(show: $show)
                    .transition(.move(edge: .trailing))
                    .zIndex(1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
