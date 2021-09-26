//
//  ArrowView.swift
//  AwordsCollectionApp
//
//  Created by Максим on 26.09.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct ArrowView: View {
    let width: CGFloat
    let height: CGFloat
    
    
    var body: some View {
        GeometryReader { geometry in
            let gWidth = geometry.size.width
            let gHeight = geometry.size.height
            
            let center = CGPoint(x: gWidth / 2,
                                 y: gHeight / 2)
            let bottomLeading = CGPoint(x: gWidth / 8,
                                        y: gHeight / 2)
            let firstPlumage = CGPoint(x: gWidth / 14,
                                      y: gHeight / 2 + 15)
            let secondPlumage = CGPoint(x: gWidth / 14,
                                      y: gHeight / 2 - 15)
            
            Path { path in
                path.move(to: center)
                path.addLine(to: bottomLeading)
                path.move(to: bottomLeading)
                path.addLine(to: firstPlumage)
                path.move(to: bottomLeading)
                path.addLine(to: secondPlumage)
            }
            .stroke(Color.black,
                    style: StrokeStyle(lineWidth: 4))
        }
    }
}

struct ArrowView_Previews: PreviewProvider {
    static var previews: some View {
        ArrowView(width: 200, height: 200)
    }
}
