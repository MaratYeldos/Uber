//
//  Color.swift
//  UberClone
//
//  Created by Yeldos Marat on 31.10.2022.
//

import SwiftUI

extension Color {
    static let theme = ColorTheme ()
}

struct ColorTheme {
    let backgroundColor = Color("BackgroundColor")
    let secondaryBackgroundColor = Color("SecondaryColor")
    let primaryTextColor = Color("PrimaryTextColor")
}
