//
//  ContentView.swift
//  RingProgress
//
//  Created by Tim Isaev on 03.06.2020.
//  Copyright © 2020 Tim Isaev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showRing: Bool = false
    
    var body: some View {
        RingProgressView(backgroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), ringBackground: #colorLiteral(red: 0.9526779056, green: 0.9767469764, blue: 1, alpha: 1), sections: [RingSection(start: 0, end: 0.15, color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), RingSection(start: 0.15, end: 0.3, color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)), RingSection(start: 0.3, end: 0.4, color:#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)), RingSection(start: 0.4, end: 0.7, color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))], showRing: showRing)
            .rotationEffect(Angle(degrees: -90))
            .onAppear {
                self.showRing = true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
