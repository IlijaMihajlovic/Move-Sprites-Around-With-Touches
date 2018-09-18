//
//  Extension.swift
//  Move Sprites Around With Touches
//
//  Created by Ilija Mihajlovic on 9/18/17.
//  Copyright © 2017 Ilija Mihajlovic. All rights reserved.
//

import UIKit

//Checking if we're on an iPhone or iPad device
enum UIUserInterfaceIdiom: Int {
    case undefined
    case phone
    case pad
}

//Catching device screen sizes
struct ScreenSize {
    static let width = UIScreen.main.bounds.width
    static let heigth = UIScreen.main.bounds.height
    
    static let maxLength = max(ScreenSize.width, ScreenSize.heigth)
    static let minLength = min(ScreenSize.width, ScreenSize.heigth)
    
}

//Determine device type
struct DeviceType {
    static let isiPhone4OrLess = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength < 568.0
    static let isiPhone5 = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength ==  568.0
    static let isiPhone6 = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 667.0
    static let isiPhone6Plus = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 736.0
    static let isiPhoneX = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 812.0
    
    static let isiPad = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.maxLength >= 1024.0
    static let isiPadPro = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.maxLength == 1366.0

}
