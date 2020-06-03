//
//  RingSection.swift
//  RingProgress
//
//  Created by Tim Isaev on 03.06.2020.
//  Copyright © 2020 Tim Isaev. All rights reserved.
//

import UIKit

protocol RingSectionType: Identifiable {
    var start: CGFloat { get set }
    var end: CGFloat { get set }
    var color: UIColor { get set }
}


class RingSection: RingSectionType {
    var id = UUID().uuidString
    var color: UIColor
    var start: CGFloat
    var end: CGFloat
    
    init(start: CGFloat, end: CGFloat, color: UIColor) {
        self.start = start
        self.end = end
        self.color = color
    }
}
