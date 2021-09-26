//
//  SwiftUIView.swift
//  AwordsCollectionApp
//
//  Created by Максим on 26.09.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
        
        //State that stores the blue rectangle show state
        @State var showBlue = false
        
        var body: some View {
            ZStack{
                
                //Green rectangle
                Rectangle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.green)
                    .zIndex(1)
                
                //Blue rectangle - Conditional!
                if showBlue{
                    Rectangle()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.blue)
                        .transition(AnyTransition.move(edge: .top))
                        .zIndex(2)
                }
                
                //Button that shows/hides the blue rectangle
                Button("showBlue") {
                    withAnimation{
                        showBlue.toggle()
                    }
                }.foregroundColor(.white)
                .zIndex(3)
            }
        }
    }

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
