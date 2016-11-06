//
//  UIColor+SJ.swift
//  SJUtils
//
//  Created by zhangwei on 16/11/5.
//  Copyright © 2016年 com.sankuai.com. All rights reserved.
//

import UIKit

extension UIColor {
    
    /// UIColor convenience initializer
    ///
    /// - Parameters:
    ///   - rgb: such as 0xff00ff
    ///   - alpha: 0.0~1.0, such as 0.5
    public convenience init(rgb: UInt32, alpha: CGFloat = 1.0) {
        self.init(red: (rgb >> 16 & 0xff).f / 0xff.f,
                  green: (rgb >> 8 & 0xff).f / 0xff.f,
                  blue: (rgb & 0xff).f / 0xff.f,
                  alpha: alpha)
    }
    
    /// UIColor convenience initializer
    ///
    /// - Parameters:
    ///   - hexString: such as "0xff00ff" (rgb), "0xff00ff00"(rgba)
    public convenience init?(hexString: String) {
        // 还可以使用Scanner，参考：http://lecason.com/2015/10/29/Swift-HexString-to-Int/
        if !(hexString.hasPrefix("0X") || hexString.hasPrefix("0x")) {
            return nil
        }
        guard let hex = UInt32(hexString.substring(from: 2), radix: 16) else {
            return nil
        }
        if (hex & 0xff000000 > 0) {
            self.init(rgb: hex >> 8, alpha: (hex & 0xff).f / 0xff.f)
        } else {
            self.init(rgb: hex)
        }
    }
}
