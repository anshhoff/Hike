//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Ansh Hardaha on 25/05/25.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating = false
    
    //MARK: - FUNCTIONS
    
    // 1.Random COordinate
    func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    // 2.Random Size
    func randomSize() -> CGFloat {
        return CGFloat.random(in: 4...80)
    }
    
    // 3.Random Scale
    func randomScale() -> CGFloat {
        return CGFloat.random(in: 0.5...1)
    }
    // 4.Random speed
    func randomSpeed() -> Double {
        return Double.random(in: 0.05...1.0)
    }
    // 5.Random Delay
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        ZStack{
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x: randomCoordinate(),
                        y: randomCoordinate()
                    )
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear(perform: {
                        withAnimation (
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        )
                        {
                            isAnimating = true
                        }
                    })
            }
            .frame(width: 256, height: 256)
            .mask(Circle())
            .drawingGroup()
        }
    }
}
    
    #Preview {
        ZStack {
            Color.teal.ignoresSafeArea()
            MotionAnimationView()
        }
    }

