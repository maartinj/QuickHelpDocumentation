////
////  CTRating.swift
////  Documentation Example
////
////  Created by Stewart Lynch on 2020-02-15.
////  Copyright © 2020 CreaTECH Solutions. All rights reserved./
////
//
//import SwiftUI
//
//
///** A custom view for presenting ratings on a particular topic or post
//
// Colors and icons can be customized.
//
// You can use *italics* and **bold** text
// 
// Enumerated Lists
// 1. One
// 3. Two
// 5. Three
//
// Bullets
// - Bullet 1
// - Bullet 2
// - Bullet 3
//
// Alternate Bullets
// * Item 1
// * Item 2
// * Item 2.1
// * Item 2.2
//
// ****
//
// Make sure you use `let` instead of `var` if it's mutated
//
// ````
// @Binding var currentRating: Int
// // Another line of code
// ````
//
// @Binding var currentRating: Int
// // Another line of code
//
// Escaping Characters
//
// This is not a bullet
//
// \* Bullet
//
// This is a bullet
// * Bullet
//
// - Attention: This is something that you need to know
// - Authors: Stewart Lynch
// - Requires: `UIKit` or `SwiftUI`
// - Complexity: This is not too difficult, but it will greatly improve the use of your code, especially if you leave it alone for a long time.
// - Important:
// "This is something every developer should know."
// - Remark: That is about the end of it.
//
// - Date:
// Last Updated
// February 16, 2020
// - Copyright: Copyright C 2020 by CreaTECH Solutions
//
// */
//struct CTRating: View {
//    var maxRating: Int
//    @Binding var currentRating: Int
//    var width:Int = 30
//    var color: UIColor = UIColor.systemYellow
//    var openSFSymbol:String = "star"
//    var fillSFSymbol:String = "star.fill"
//
//    public var body: some View {
//        HStack {
//            ForEach(0..<maxRating) { rating in
//                Image(systemName: rating < self.currentRating ? self.fillSFSymbol : self.openSFSymbol)
//                    .resizable()
//                    .scaledToFit()
//                    .foregroundColor(Color(self.color))
//                    .onTapGesture {
//                        self.currentRating = rating+1
//                    }
//            }
//        }.frame(width: CGFloat(maxRating * width))
//    }
//}
//
//struct CTRating_Previews: PreviewProvider {
//    static var previews: some View {
//        CTRating(maxRating: 5, currentRating: .constant(3))
//            .environment(\.colorScheme, .light)
//            .previewLayout(.sizeThatFits)
//            .padding(10)
//    }
//}
//
//
//
