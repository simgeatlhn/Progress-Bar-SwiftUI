//
//  ContentView.swift
//  Progress-Bar
//
//  Created by simge on 30.04.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var percent: CGFloat = 0
    
    var body: some View {
        VStack(spacing:80){
            Text("\(Int(percent))%")
                .font(.system(size: 40,weight: .bold))
            
            ProgressBar(width:300 , height:30 , percent:percent)
                .animation(.spring())
            
            Button(action: {percent = CGFloat.random(in:0...100) }, label: {
                Text("Generate Random Number")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
