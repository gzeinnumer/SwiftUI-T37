//
//  NewView.swift
//  SwiftUI T37
//
//  Created by M Fadli Zein on 24/03/22.
//

import SwiftUI

struct NewView: View {
    @Binding var show : Bool
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(.blue)
            .padding()
            .onTapGesture {
                withAnimation(.spring()){
                    show.toggle()
                }
            }
    }
}

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewView(show: .constant(true))
    }
}
