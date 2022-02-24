//
//  SwiftUIView.swift
//  
//
//  Created by 老房东 on 2022-02-23.
//

import SwiftUI

struct GridView: View {
    @available(macOS 10.15, *)
    @State var selected : Bool = false
    var text : String
    var body: some View {
    
        Text(text)
            .foregroundColor(selected ? .blue : .red)
            .font(.system(size: 100, design: .rounded))
            .minimumScaleFactor(0.01)
            .onTapGesture {
                selected.toggle()
            }
    }
}

struct GridView_Previews: PreviewProvider {
    @available(macOS 10.15, *)
    static var previews: some View {
        GridView(text: "A")
    }
}
