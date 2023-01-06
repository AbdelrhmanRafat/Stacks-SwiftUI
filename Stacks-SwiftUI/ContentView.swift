//
//  ContentView.swift
//  Stacks-SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Choose")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            Text("Your Plan")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
