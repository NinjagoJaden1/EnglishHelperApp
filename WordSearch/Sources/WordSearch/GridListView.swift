//
//  SwiftUIView.swift
//  
//
//  Created by 老房东 on 2022-02-23.
//

import SwiftUI

struct GridListView: View {
    @available(macOS 10.15, *)
    @State var vm = ViewModle()
    var body: some View {
        VStack(spacing: 0){
            ForEach (vm.grid,id:\.self){row in
                HStack(spacing: 0){
                    ForEach(row,id:\.self){ grid in
                        GridView(text: grid)


                        
                    }
                }

            }
        }

    }
}

struct GridListView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            GridListView()
            GridListView()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
struct ViewModle{
    let grid = [
    ["A","B","C","D","E","F","G","H","I","J"],
    ["A","B","C","D","E","F","G","H","I","J"],
    ["A","B","C","D","E","F","G","H","I","J"],
    ["A","B","C","D","E","F","G","H","I","J"],
    ["A","B","C","D","E","F","G","H","I","J"],
    ["A","B","C","D","E","F","G","H","I","J"],
    ["A","B","C","D","E","F","G","H","I","J"],
    ["A","B","C","D","E","F","G","H","I","J"],
    ["A","B","C","D","E","F","G","H","I","J"],
    ["A","B","C","D","E","F","G","H","I","J"]
    ]
}
