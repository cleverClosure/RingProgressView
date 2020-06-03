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
    var size: CGFloat = 300
    var thickness: CGFloat = 60
    var ringBackground = #colorLiteral(red: 0.9526779056, green: 0.9767469764, blue: 1, alpha: 1)
    var sections: [RingSection]
    var showRing: Bool = false
    private let roundDiff: CGFloat = 0.032
    var animationDuration: Double = 0.6
    
    var body: some View {
        let maskStart: CGFloat = sections.first?.start ?? 0
        let maskEnd: CGFloat = showRing ? sections.last?.end ?? 0 : 0
        return ZStack {
            Circle()
                .foregroundColor(Color(backgroundColor))
                .frame(width: size, height: size)
            
            Circle()
                .stroke(Color(ringBackground), style:  StrokeStyle(lineWidth: thickness))
                .frame(width: size, height: size)
            RingView(sections: sections, thickness: thickness, size: size)
                .compositingGroup()
                .mask(
                    Circle()
                        .trim(from: maskStart + roundDiff, to: true ? (maskEnd - roundDiff) : maskStart)
                        .stroke(style: StrokeStyle(lineWidth: thickness, lineCap: .round))
                        .frame(width: size, height: size)
            )
                .compositingGroup()
                .shadow(color: Color.black.opacity(0.4), radius: 3, x: 0, y: 0)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 0)
                .animation(Animation.easeInOut(duration: animationDuration))
        }
    }
}

struct RingProgressView_Previews: PreviewProvider {
    static var previews: some View {
        let data = [RingSection(start: 0, end: 0.2, color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), RingSection(start: 0.2, end: 0.5, color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))]
        return RingProgressView(sections: data, showRing: true)
    }
}
