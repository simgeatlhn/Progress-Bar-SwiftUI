//
//  ProgressBar.swift
//  Progress-Bar
//
//  Created by simge on 30.04.2022.
//

import SwiftUI

struct ProgressBar: View {
    
    var width : CGFloat = 300
    var height : CGFloat = 30
    var percent : CGFloat = 67
  

    var body: some View {
        let multiplier = width / 100
        
        ZStack(alignment:.leading){
            RoundedRectangle(cornerRadius: height,style: .continuous)
                .frame(width: width, height: height)
                .foregroundColor(Color.black.opacity(0.1))
            
            RoundedRectangle(cornerRadius: height,style: .continuous)
                .frame(width: percent * multiplier, height: height)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color.red,Color.blue]), startPoint: .leading, endPoint: .trailing)
                        .clipShape(RoundedRectangle(cornerRadius: height,style: .continuous))
                )
                .foregroundColor(.clear)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}
