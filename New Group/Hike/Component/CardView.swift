//
//  CardView.swift
//  Hike
//
//  Created by Ansh Hardaha on 27/04/25.
//

import SwiftUI

struct CardView: View {
    // MARK: - properties
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    func randomImage(){
        
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack{
            CustomBackgroundView()
            VStack{
                VStack(alignment: .leading){
                    HStack{
                        Text("Hiking")
                            .frame(alignment: .top)
                            .fontWeight(.black)
                        
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors:[.customGrayLight,
                                            .customGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom)
                            )
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            CustomButtonView()
                        }
                    }
                    
                    
                    Text("Fun and enjoyable outdoor activities for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                // MARK: - Main content
                
                ZStack{
                    
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                }
                
                // MARK: - Footer
                Button{
                    print("the button is pressed")
                    randomImage()
                } label: {
                    Text("Explore More")
                        .buttonStyle(.borderedProminent)
                        .tint(.indigo)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(
                            colors: [.customGreenLight,
                                     .customGreenDark],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                        
                }
                .buttonStyle(GradientButton())
                
            }
        }
        .frame(width: 315, height: 570)
    }
}

#Preview {
    CardView()
}
