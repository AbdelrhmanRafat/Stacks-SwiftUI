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
                HStack { //Embed VStack in HStack
                    PricingView(title: "Basic", Price: "$9", TextColor: .white, bgColor: .purple)
                    PricingView(title: "Pro", Price: "$19", TextColor: .black, bgColor: Color(red: 240/255, green: 240/255, blue: 240/255))
            }
                .padding(.horizontal, 20)
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
        VStack(alignment: .leading, spacing: 2)
        {
            Text("Choose")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            Text("Your Plan")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
    }
}
//--------------------------------------------
//Extract Subview with arguments.
struct PricingView: View {
    var title : String
    var Price : String
    var TextColor : Color
    var bgColor : Color
    var body: some View {
        VStack {
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
