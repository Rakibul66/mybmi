//
//  hex.swift
//  mybmi
//
//  Created by Roxy  on 20/2/25.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)

        let r, g, b: Double
        if hex.count == 6 {
            r = Double((int >> 16) & 0xFF) / 255.0
            g = Double((int >> 8) & 0xFF) / 255.0
            b = Double(int & 0xFF) / 255.0
        } else {
            r = 0
            g = 0
            b = 0
        }

        self.init(.sRGB, red: r, green: g, blue: b, opacity: 1.0)
    }
}
