//
//  ContentView.swift
//  Stacks-SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        ZStack {
            PlansView(Icon: "burst.fill", title: "Basic", bgColor: Color.purple)
            PlansView(Icon: "dial", title: "Pro", bgColor: Color(red: 255/255, green: 183/255, blue: 37/255))
                .offset(x: 0, y: 100.0)
            PlansView(Icon: "wand.and.rays", title: "Team",Price: "$299", bgColor: Color(red: 62/255, green: 63/255, blue: 70/255),duration: "per month")
                .offset(x: 0, y: 200.0)
        }
        .padding(.horizontal,13)
        Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PlansView: View {
    var Icon : String?
    var title : String
    var Price : String?
    var bgColor : Color
    var duration : String?
    var body: some View {
        VStack(alignment: .center, spacing: 3){
            Icon.map({
                Image(systemName: $0)
                    .font(.largeTitle)
                    .padding(.top,10)
            })
            Price.map({
                Text($0)
                    .font(.largeTitle)
            })
            Text(title)
                .font(.title)
                .fontWeight(.black)
            duration.map({
                Text($0)
                    .font(.system(size: 20, weight: .light, design: .rounded))
            })
            Spacer()
        }
        .foregroundColor(.white)
        .frame(minWidth: 0, maxWidth: .infinity,maxHeight: 300.0, alignment: .center)
        .background(bgColor)
        .cornerRadius(16)
    }
}
