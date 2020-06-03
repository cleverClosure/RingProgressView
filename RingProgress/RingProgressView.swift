//
//  ContentView.swift
//  RingProgress
//
//  Created by Tim Isaev on 03.06.2020.
//  Copyright © 2020 Tim Isaev. All rights reserved.
//

import SwiftUI

struct RingProgressView: View {
    
    var backgroundColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    let size: CGFloat = 300
    let thickness: CGFloat = 60
    
    var body: some View {
        return ZStack {
            Circle()
                .foregroundColor(Color(backgroundColor))
                .frame(width: size, height: size)
            
            Circle()
                .stroke(Color(#colorLiteral(red: 0.9526779056, green: 0.9767469764, blue: 1, alpha: 1)), style:  StrokeStyle(lineWidth: thickness))
                .frame(width: size, height: size)
        }
    }
}

struct RingProgressView_Previews: PreviewProvider {
    static var previews: some View {
        RingProgressView()
    }
}
