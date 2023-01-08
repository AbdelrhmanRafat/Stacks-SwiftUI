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
                HeaderView() // Code in Content View now is being much cleaner and easier to read.
                HStack(spacing :15) { //Embed VStack in HStack
                    PricingView(title: "Basic", Price: "$9", TextColor: .white, bgColor: .purple)
                    //Using Z-Stack.
                    ZStack {
                    PricingView(title: "Pro", Price: "$19", TextColor: .black, bgColor: Color(red: 240/255, green: 240/255, blue: 240/255))
                        MarkText(title: "Best for Designers", y_offset: 87)
                    }
                }
                .padding(.horizontal, 20)
                ZStack{
                PricingView(title: "Team",Icon: "wand.and.rays", Price: "$299", TextColor: .white, bgColor: Color(red: 62/255, green: 63/255, blue: 70/255))
                    .padding(.horizontal)
                    MarkText(title: "Perfect for teams with 20 members", y_offset: 107)
                }
                Spacer() // Adding Spacer to bottom.
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//----------------------------------------
// Extarct SubView
struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2)
            {
                Text("Choose")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                Text("Your Plan")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }
            Spacer() // As SwiftUI doesn't have autolayouts
            //A flexiable space that expands along the major axis of it's containing stack layout or on both axes if not contained in a stack.
        }
        .padding(.horizontal,40)
    }
}
//--------------------------------------------
//Extract Subview with arguments.
struct PricingView: View {
    var title : String
    var Icon : String? //Defining an optional value
    var Price : String
    var TextColor : Color
    var bgColor : Color
    var body: some View {
        VStack {
            //More elegant way to handle optionals
            Icon.map({
                Image(systemName: $0)
                .font(.largeTitle)
                .foregroundColor(TextColor)
            })
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
            Text(Price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
            Text("per month")
                .font(.headline)
        }
        .foregroundColor(TextColor)
        //Using Frame in order to make Vstack width indpendent on Text Length..
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)// adjust max width to infinty instead of fixed number means the view will adjust itself to fill maximum width..
        .padding(40) // Padding Must Get first..
        .background(bgColor)
        .cornerRadius(10)
    }
}

struct MarkText: View {
    var title : String
    var y_offset : CGFloat
    var body: some View {
        Text(title)
            .font(.system(.caption, design: .rounded))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(5)// Padding comes before background color
            .background(Color(red: 255/255, green: 183/255, blue: 37/255))
            .offset(x: 0, y: y_offset)
        // To Adjust Position of Text.
       //Positive Value to move down and negative value to move up
    }
}
