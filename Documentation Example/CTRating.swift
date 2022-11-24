//
//  CTRating.swift
//  Documentation Example
//
//  Created by Stewart Lynch on 2020-02-15.
//  Copyright © 2020 CreaTECH Solutions. All rights reserved./
//

import SwiftUI


/** A custom view for presenting ratings on a particular topic or post
 
 You will be able to tap on an icon in the view to change the rating for the topic or post.
 - Important: The view expects a binding so within your view you must have a Interger binding that represents the default rating like this:
 ````
@State var currentRating = 2
 ````
 The default implementation uses a yellow star symbol and can be initialized using:

        CTRating(maxRating: 5, currentRating: $currentRating)

 where `maxRating` is an integer that represents the maximum rating for the item being rated and current rating being the rating that will be changed by the `onTapGesture` event
 
 ****
 
 **Options**
 
 There are optional parameters that you can use to construct the CTRating view.
 
 **color:**
 - an Int representing the width that the view will use
 
 **width:**
 - a UIColor representing the color of this symbol
 
 **openSFSymbol:**
 - a String representing SFSymbol representing the unselected ratings
 
 **fillSFSymbol:**
 - a String representing SFSymbol representing the selected ratings
 
 Example
 ````
 CTRating(maxRating: 5,
          currentRating: $currentRating,
          width: 50,
          color: .red,
          openSFSymbol: "hearth",
          fillSFSymbol: "heart.fill")
 ````
 */
public struct CTRating: View {
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



