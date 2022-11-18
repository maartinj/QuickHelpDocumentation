//
//  CTRating.swift
//  Documentation Example
//
//  Created by Stewart Lynch on 2020-02-15.
//  Copyright © 2020 CreaTECH Solutions. All rights reserved./
//

import SwiftUI


struct CTRating: View {
    var maxRating: Int
    @Binding var currentRating: Int
    var width:Int = 30
    var color: UIColor = UIColor.systemYellow
    var openSFSymbol:String = "star"
    var fillSFSymbol:String = "star.fill"
    
    public var body: some View {
        HStack {
            ForEach(0..<maxRating) { rating in
                Image(systemName: rating < self.currentRating ? self.fillSFSymbol : self.openSFSymbol)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color(self.color))
                    .onTapGesture {
                        self.currentRating = rating+1
                }
            }
        }.frame(width: CGFloat(maxRating * width))
    }
}

struct CTRating_Previews: PreviewProvider {
    static var previews: some View {
            CTRating(maxRating: 5, currentRating: .constant(3))
                .environment(\.colorScheme, .light)
                .previewLayout(.sizeThatFits)
                .padding(10)
    }
}



