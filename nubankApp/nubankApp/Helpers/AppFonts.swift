//
//  AppFonts.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation
import UIKit

public class AppFont: UIColor {
    static var instanciate = AppFont()
    
    let MulishBlackFont12px: UIFont = UIFont(name: "Mulish-Black", size: 12) ?? UIFont()
    let MulishBlackFont22px: UIFont = UIFont(name: "Mulish-Black", size: 22) ?? UIFont()
    
    let MulishBoldFont12px: UIFont = UIFont(name: "Mulish-Bold", size: 12) ?? UIFont()
    let MulishBoldFont22px: UIFont = UIFont(name: "Mulish-Bold", size: 22) ?? UIFont()
    
    let MulishExtraBoldFont12px: UIFont = UIFont(name: "Mulish-ExtraBold", size: 12) ?? UIFont()
    let MulishExtraFont22px: UIFont = UIFont(name: "Mulish-ExtraBold", size: 22) ?? UIFont()
    
    let MulishExtraLightFont12px: UIFont = UIFont(name: "Mulish-ExtraLight", size: 12) ?? UIFont()
    let MulishExtraLightFont22px: UIFont = UIFont(name: "Mulish-ExtraLight", size: 22) ?? UIFont()
    
    let MulishLightFont12px: UIFont = UIFont(name: "Mulish-Light", size: 12) ?? UIFont()
    let MulishLightFont22px: UIFont = UIFont(name: "Mulish-Light", size: 22) ?? UIFont()
    
    let MulishMediumFont12px: UIFont = UIFont(name: "Mulish-Medium", size: 12) ?? UIFont()
    let MulishMediumFont22px: UIFont = UIFont(name: "Mulish-Medium", size: 22) ?? UIFont()
    
    let MulishRegularFont12px: UIFont = UIFont(name: "Mulish-Regular", size: 12) ?? UIFont()
    let MulishRegularFont22px: UIFont = UIFont(name: "Mulish-Regular", size: 22) ?? UIFont()
    
    let MulishSemiBoldFont12px: UIFont = UIFont(name: "Mulish-SemiBold", size: 12) ?? UIFont()
    let MulishSemiBoldFont22px: UIFont = UIFont(name: "Mulish-SemiBold", size: 22) ?? UIFont()
}
