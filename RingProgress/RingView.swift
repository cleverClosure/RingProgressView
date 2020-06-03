//
//  RingView.swift
//  RingProgress
//
//  Created by Tim Isaev on 03.06.2020.
//  Copyright © 2020 Tim Isaev. All rights reserved.
//

import SwiftUI

struct RingView: View {
    
    var sections: [RingSection]
    let thickness: CGFloat = DefaultRingValues.thickness
    let size: CGFloat = DefaultRingValues.size
    
    var body: some View {
        ZStack {
            ForEach(sections) { section in
                SectionView(section: section, color: section.color, thickness: self.thickness)
                    .frame(width: self.size, height: self.size)
            }
        }
    }
        
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView(sections: [RingSection(start: 0, end: 0.2, color: .red), RingSection(start: 0.2, end: 0.5, color: .green)])
    }
}
