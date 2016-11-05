//
//  UIColor+SJ.swift
//  SJUtils
//
//  Created by zhangwei on 16/11/5.
//  Copyright © 2016年 com.sankuai.com. All rights reserved.
//

import UIKit

extension UIColor {
    
    public convenience init(hex: UInt32) {
        self.init(red: (hex >> 16 & 0xff).f / 0xff.f,
                  green: (hex >> 8 & 0xff).f / 0xff.f,
                  blue: (hex & 0xff).f / 0xff.f,
                  alpha: 1.f)
    }
    
    public convenience init?(hexString: String) {
        // 还可以使用Scanner，参考：http://lecason.com/2015/10/29/Swift-HexString-to-Int/
        if !(hexString.hasPrefix("0X") || hexString.hasPrefix("0x")) {
            return nil
        }
        guard let hex = UInt32(hexString.substring(from: 2), radix: 16) else {
            return nil
        }
        self.init(hex: hex)
    }
}
