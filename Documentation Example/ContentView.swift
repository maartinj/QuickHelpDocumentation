//
//  ContentView.swift
//  Documentation Example
//
//  Created by Stewart Lynch on 2020-02-15.
//  Copyright © 2020 CreaTECH Solutions. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State var currentRating = 2
    var body: some View {
        VStack {
            Text("Hello World")
            CTRating(maxRating: 5,
                     currentRating: $currentRating,
                     width: 50,
                     color: .red,
                     openSFSymbol: "hearth",
                     fillSFSymbol: "heart.fill")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
