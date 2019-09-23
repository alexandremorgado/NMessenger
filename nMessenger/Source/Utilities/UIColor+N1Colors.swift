//
// Copyright (c) 2016 eBay Software Foundation
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

import Foundation
import UIKit

//MARK: UIColor extension
/**
 Custom Colors for NMessenger
 */
extension UIColor {
//    class func n1MidGreyColor() -> UIColor {
//        return UIColor(red: 144.0 / 255.0, green: 164.0 / 255.0, blue: 174.0 / 255.0, alpha: 1)
//    }
//    
//    class func n1DarkestGreyColor() -> UIColor {
//        return UIColor(red: 38.0 / 255.0, green: 50.0 / 255.0, blue: 56.0 / 255.0, alpha: 1)
//    }
//    
//    class func n1DarkGreyColor() -> UIColor {
//        return UIColor(red: 96.0 / 255.0, green: 125.0 / 255.0, blue: 139.0 / 255.0, alpha: 1)
//    }
//    
//    class func n1WhiteColor() -> UIColor {
//        return UIColor(white: 255.0 / 255.0, alpha: 1)
//    }
//    
//    class func n1BrandRedColor() -> UIColor {
//        return UIColor(red: 255.0 / 255.0, green: 38.0 / 255.0, blue: 66.0 / 255.0, alpha: 1)
//    }
//    
//    class func n1ActionBlueColor() -> UIColor {
//        return UIColor(red: 74.0 / 255.0, green: 144.0 / 255.0, blue: 226.0 / 255.0, alpha: 1)
//    }
//    
//    class func n1OverlayBorderColor() -> UIColor {
//        return UIColor(red: 38.0 / 255.0, green: 49.0 / 255.0, blue: 56.0 / 255.0, alpha: 0.1)
//    }
//    
//    class func n1AlmostWhiteColor() -> UIColor {
//        return UIColor(red: 251.0 / 255.0, green: 252.0 / 255.0, blue: 253.0 / 255.0, alpha: 1)
//    }
//    
//    class func n1DarkerGreyColor() -> UIColor {
//        return UIColor(red: 69.0 / 255.0, green: 90.0 / 255.0, blue: 100.0 / 255.0, alpha: 1)
//    }
//    
//    class func n1LightGreyColor() -> UIColor {
//        return UIColor(red: 207.0 / 255.0, green: 216.0 / 255.0, blue: 220.0 / 255.0, alpha: 1)
//    }
//    
//    class func n1LighterGreyColor() -> UIColor {
//        return UIColor(red: 233.0 / 255.0, green: 239.0 / 255.0, blue: 242.0 / 255.0, alpha: 1)
//    }
//    
//    class func n1PaleGreyColor() -> UIColor {
//        return UIColor(red: 243.0 / 255.0, green: 247.0 / 255.0, blue: 249.0 / 255.0, alpha: 1)
//    }
//    
//    class func n1Black50Color() -> UIColor { 
//        return UIColor(white: 0.0, alpha: 0.5)
//    }

    class func colorFromRGB(_ rgbHexValue: UInt) -> UIColor {
            return UIColor(
                red: CGFloat((rgbHexValue & 0xFF0000) >> 16) / 255.0,
                green: CGFloat((rgbHexValue & 0x00FF00) >> 8) / 255.0,
                blue: CGFloat(rgbHexValue & 0x0000FF) / 255.0,
                alpha: CGFloat(1.0)
            )
        }
    /** returns a random color */
    class func randomColor() -> UIColor{
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    }


enum ColorCompatibility {
    static var label: UIColor {
        if #available(iOS 13, *) {
            return .label
        }
        return UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    }
    static var secondaryLabel: UIColor {
        if #available(iOS 13, *) {
            return .secondaryLabel
        }
        return UIColor(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.6)
    }
    static var tertiaryLabel: UIColor {
        if #available(iOS 13, *) {
            return .tertiaryLabel
        }
        return UIColor(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.3)
    }
    static var quaternaryLabel: UIColor {
        if #available(iOS 13, *) {
            return .quaternaryLabel
        }
        return UIColor(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.18)
    }
    static var systemFill: UIColor {
        if #available(iOS 13, *) {
            return .systemFill
        }
        return UIColor(red: 0.47058823529411764, green: 0.47058823529411764, blue: 0.5019607843137255, alpha: 0.2)
    }
    static var secondarySystemFill: UIColor {
        if #available(iOS 13, *) {
            return .secondarySystemFill
        }
        return UIColor(red: 0.47058823529411764, green: 0.47058823529411764, blue: 0.5019607843137255, alpha: 0.16)
    }
    static var tertiarySystemFill: UIColor {
        if #available(iOS 13, *) {
            return .tertiarySystemFill
        }
        return UIColor(red: 0.4627450980392157, green: 0.4627450980392157, blue: 0.5019607843137255, alpha: 0.12)
    }
    static var quaternarySystemFill: UIColor {
        if #available(iOS 13, *) {
            return .quaternarySystemFill
        }
        return UIColor(red: 0.4549019607843137, green: 0.4549019607843137, blue: 0.5019607843137255, alpha: 0.08)
    }
    static var placeholderText: UIColor {
        if #available(iOS 13, *) {
            return .placeholderText
        }
        return UIColor(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.3)
    }
    static var systemBackground: UIColor {
        if #available(iOS 13, *) {
            return .systemBackground
        }
        return UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    static var secondarySystemBackground: UIColor {
        if #available(iOS 13, *) {
            return .secondarySystemBackground
        }
        return UIColor(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922, alpha: 1.0)
    }
    static var tertiarySystemBackground: UIColor {
        if #available(iOS 13, *) {
            return .tertiarySystemBackground
        }
        return UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    static var systemGroupedBackground: UIColor {
        if #available(iOS 13, *) {
            return .systemGroupedBackground
        }
        return UIColor(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922, alpha: 1.0)
    }
    static var secondarySystemGroupedBackground: UIColor {
        if #available(iOS 13, *) {
            return .secondarySystemGroupedBackground
        }
        return UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    static var tertiarySystemGroupedBackground: UIColor {
        if #available(iOS 13, *) {
            return .tertiarySystemGroupedBackground
        }
        return UIColor(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922, alpha: 1.0)
    }
    static var separator: UIColor {
        if #available(iOS 13, *) {
            return .separator
        }
        return UIColor(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.29)
    }
    static var opaqueSeparator: UIColor {
        if #available(iOS 13, *) {
            return .opaqueSeparator
        }
        return UIColor(red: 0.7764705882352941, green: 0.7764705882352941, blue: 0.7843137254901961, alpha: 1.0)
    }
    static var link: UIColor {
        if #available(iOS 13, *) {
            return .link
        }
        return UIColor(red: 0.0, green: 0.47843137254901963, blue: 1.0, alpha: 1.0)
    }
    static var darkText: UIColor {
        if #available(iOS 13, *) {
            return .darkText
        }
        return UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    }
    static var lightText: UIColor {
        if #available(iOS 13, *) {
            return .lightText
        }
        return UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.6)
    }
    static var systemBlue: UIColor {
        if #available(iOS 13, *) {
            return .systemBlue
        }
        return UIColor(red: 0.0, green: 0.47843137254901963, blue: 1.0, alpha: 1.0)
    }
    
    static var systemGreen: UIColor {
        if #available(iOS 13, *) {
            return .systemGreen
        }
        return UIColor(red: 0.20392156862745098, green: 0.7803921568627451, blue: 0.34901960784313724, alpha: 1.0)
    }
    static var systemIndigo: UIColor {
        if #available(iOS 13, *) {
            return .systemIndigo
        }
        return UIColor(red: 0.34509803921568627, green: 0.33725490196078434, blue: 0.8392156862745098, alpha: 1.0)
    }
    static var systemOrange: UIColor {
        if #available(iOS 13, *) {
            return .systemOrange
        }
        return UIColor(red: 1.0, green: 0.5843137254901961, blue: 0.0, alpha: 1.0)
    }
    static var systemPink: UIColor {
        if #available(iOS 13, *) {
            return .systemPink
        }
        return UIColor(red: 1.0, green: 0.17647058823529413, blue: 0.3333333333333333, alpha: 1.0)
    }
    static var systemPurple: UIColor {
        if #available(iOS 13, *) {
            return .systemPurple
        }
        return UIColor(red: 0.6862745098039216, green: 0.3215686274509804, blue: 0.8705882352941177, alpha: 1.0)
    }
    static var systemRed: UIColor {
        if #available(iOS 13, *) {
            return .systemRed
        }
        return UIColor(red: 1.0, green: 0.23137254901960785, blue: 0.18823529411764706, alpha: 1.0)
    }
    static var systemTeal: UIColor {
        if #available(iOS 13, *) {
            return .systemTeal
        }
        return UIColor(red: 0.35294117647058826, green: 0.7843137254901961, blue: 0.9803921568627451, alpha: 1.0)
    }
    static var systemYellow: UIColor {
        if #available(iOS 13, *) {
            return .systemYellow
        }
        return UIColor(red: 1.0, green: 0.8, blue: 0.0, alpha: 1.0)
    }
    static var systemGray: UIColor {
        if #available(iOS 13, *) {
            return .systemGray
        }
        return UIColor(red: 0.5568627450980392, green: 0.5568627450980392, blue: 0.5764705882352941, alpha: 1.0)
    }
    static var systemGray2: UIColor {
        if #available(iOS 13, *) {
            return .systemGray2
        }
        return UIColor(red: 0.6823529411764706, green: 0.6823529411764706, blue: 0.6980392156862745, alpha: 1.0)
    }
    static var systemGray3: UIColor {
        if #available(iOS 13, *) {
            return .systemGray3
        }
        return UIColor(red: 0.7803921568627451, green: 0.7803921568627451, blue: 0.8, alpha: 1.0)
    }
    static var systemGray4: UIColor {
        if #available(iOS 13, *) {
            return .systemGray4
        }
        return UIColor(red: 0.8196078431372549, green: 0.8196078431372549, blue: 0.8392156862745098, alpha: 1.0)
    }
    static var systemGray5: UIColor {
        if #available(iOS 13, *) {
            return .systemGray5
        }
        return UIColor(red: 0.8980392156862745, green: 0.8980392156862745, blue: 0.9176470588235294, alpha: 1.0)
    }
    static var systemGray6: UIColor {
        if #available(iOS 13, *) {
            return .systemGray6
        }
        return UIColor(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922, alpha: 1.0)
    }
    
}
