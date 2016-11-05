//
//  Floating+Utils.swift
//  Pods
//
//  Created by zhangwei on 16/11/5.
//
//

import Foundation

extension CGFloat {
    public var float: Float { return Float(self) }
    
    public var double: Double { return Double(self) }
}

extension Double {
    public var float: Float { return Float(self) }
    
    public var f: CGFloat { return CGFloat(self) }
}

extension Float {
    public var f: CGFloat { return CGFloat(self) }
    
    public var double: Double { return Double(self) }
}
