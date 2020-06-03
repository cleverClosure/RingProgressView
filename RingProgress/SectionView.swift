//
//  SectionView.swift
//  RingProgress
//
//  Created by Tim Isaev on 03.06.2020.
//  Copyright © 2020 Tim Isaev. All rights reserved.
//

import SwiftUI


struct SectionView: View {
    
    var section: RingSection
    let color: UIColor
    let thickness: CGFloat
    
    var body: some View {
        return Circle()
            .trim(from: self.section.start, to: self.section.end)
            .stroke(Color(self.color), style:  StrokeStyle(lineWidth: self.thickness, lineCap: .butt))
        
    }
}


struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        return SectionView(section: RingSection(start: 0, end: 0.3, color: UIColor.red), color: .green, thickness: 14)
    }
}
