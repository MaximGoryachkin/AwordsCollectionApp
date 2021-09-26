//
//  FlowerView.swift
//  AwordsCollectionApp
//
//  Created by Максим on 25.09.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct TargetView: View {
    let width: CGFloat
    let height: CGFloat
    @Binding var isTapped: Bool
    
    var body: some View {
        Button (action: buttonTapped) {
            GeometryReader { geometry in
                let size = min(geometry.size.width, geometry.size.height)
                let gWidth = geometry.size.width
                let gHeight = geometry.size.height
                
                let center = CGPoint(x: gWidth / 2,
                                     y: gHeight / 2)
                
                Path { path in
                    path.addArc(center: center,
                                radius: size / 10,
                                startAngle: .degrees(0),
                                endAngle: .degrees(360),
                                clockwise: true)
                }
                .fill(Color.red)
                Path { path in
                    path.addArc(center: center,
                                radius: size / 4.2,
                                startAngle: .degrees(0),
                                endAngle: .degrees(360),
                                clockwise: true)
                }
                .stroke(lineWidth: 20)
                .fill(Color.red)
                Path { path in
                    path.addArc(center: center,
                                radius: size / 2.5,
                                startAngle: .degrees(0),
                                endAngle: .degrees(360),
                                clockwise: true)
                }
                .stroke(lineWidth: 20)
                .fill(Color.red)
                Path { path in
                    path.addArc(center: center,
                                radius: size / 2.3,
                                startAngle: .degrees(0),
                                endAngle: .degrees(360),
                                clockwise: true)
                }
                .stroke(lineWidth: 5)
                .fill(Color.black)
            }
            .frame(width: width, height: height)
        }
    }
    
    private func buttonTapped() {
        withAnimation {
            isTapped.toggle()
        }
    }
}

struct FlowerView_Previews: PreviewProvider {
    static var previews: some View {
        TargetView(width: 200, height: 200, isTapped: .constant(true))
    }
}
