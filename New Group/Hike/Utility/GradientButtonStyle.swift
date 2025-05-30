//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Ansh Hardaha on 30/04/25.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 32)
            .background(
                configuration.isPressed ?
                LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
                :
                    LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
            .cornerRadius(40)
    }
}
