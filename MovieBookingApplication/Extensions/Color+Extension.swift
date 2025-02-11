//
//  Color+Extension.swift
//  MovieBookingApplication
//
//  Created by Brian Suárez Santiago on 28/08/24.
//

import UIKit
import SwiftUI

extension UIColor {
    static let customAccentColor = UIColor(red: 255/255, green: 87/255, blue: 0/255, alpha: 1)
    static let customBackgroundColor = UIColor(red: 30/255.0, green: 30/255.0, blue: 30/255.0, alpha: 1)
    static let customSecondaryColor = UIColor(red: 33/255, green: 33/255, blue: 36/255, alpha: 1)
    static let customButtonBackgroundColor = UIColor(red: 140/255, green: 1/255, blue: 40/255, alpha: 1)
}

extension Color {
    static let customAccentColor = Color(UIColor.customAccentColor)
    static let customBackgroundColor = Color(UIColor.customBackgroundColor)
}
