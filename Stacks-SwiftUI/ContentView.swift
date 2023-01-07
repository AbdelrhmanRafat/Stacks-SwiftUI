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
                    VStack {
                        Text("Basic")
                            .font(.system(.title, design: .rounded))
                            .fontWeight(.black)
                        Text("$9")
                            .font(.system(size: 40, weight: .heavy, design: .rounded))
                        Text("per month")
                            .font(.headline)
                    }
                    .foregroundColor(.white)
                    //Using Frame in order to make Vstack width indpendent on Text Length..
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)// adjust max width to infinty instead of fixed number means the view will adjust itself to fill maximum width..
                    .padding(40) // Padding Must Get first..
                    .background(Color.purple)
                    .cornerRadius(10)
                    //The both Vstack looks very similar but Actually they are dpending on length of text.
                    VStack {
                        Text("Pro")
                            .font(.system(.title, design: .rounded))
                            .fontWeight(.black)
                        Text("$19")
                            .font(.system(size: 40, weight: .heavy, design: .rounded))
                        Text("per month")
                            .font(.headline)
                            .foregroundColor(.gray)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                    .padding(40)
                    .background(Color(red: 240/255, green: 240/255, blue: 240/255))
                    .cornerRadius(10)
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
