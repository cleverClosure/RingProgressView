//
//  ContentView.swift
//  RingProgress
//
//  Created by Tim Isaev on 03.06.2020.
//  Copyright © 2020 Tim Isaev. All rights reserved.
//

import SwiftUI

struct RingProgressView: View {
    
    var backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    let size: CGFloat = 300
    let thickness: CGFloat = 60
    let ringBackground = #colorLiteral(red: 0.9526779056, green: 0.9767469764, blue: 1, alpha: 1)
    let sections = [RingSection(start: 0, end: 0.2, color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), RingSection(start: 0.2, end: 0.5, color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))]
    
    var body: some View {
        return ZStack {
            Circle()
                .foregroundColor(Color(backgroundColor))
                .frame(width: size, height: size)
            
            Circle()
                .stroke(Color(ringBackground), style:  StrokeStyle(lineWidth: thickness))
                .frame(width: size, height: size)
            RingView(sections: sections)
        }
    }
}

struct RingProgressView_Previews: PreviewProvider {
    static var previews: some View {
        RingProgressView()
    }
}
