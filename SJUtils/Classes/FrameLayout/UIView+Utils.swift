//
//  UIView+Utils.swift
//  Pods
//
//  Created by zhangwei on 16/11/21.
//
//

import Foundation

extension UIView: SadJasonCompitable { }

// MARK: - 有个问题：这要求base必须是`var`，`let`就不行了
extension SadJason where Base: UIView {
    
    public var top: CGFloat {
        get {
            return base.frame.origin.y
        }
        set {
            base.frame.origin.y = newValue
        }
    }
    
    public var bottom: CGFloat {
        get {
            return base.frame.height + base.frame.origin.y
        }
        set {
            base.frame.origin.y = newValue - base.frame.height
        }
    }
    
    public var left: CGFloat {
        get {
            return base.frame.origin.x
        }
        set {
            base.frame.origin.x = newValue
        }
    }
    
    public var right: CGFloat {
        get {
            return base.frame.origin.x + base.frame.width
        }
        set {
            base.frame.origin.x = newValue - base.frame.width
        }
    }
    
    public var width: CGFloat {
        get {
            return base.frame.width
        }
        set {
            base.frame.size.width = newValue
        }
    }
    
    public var height: CGFloat {
        get {
            return base.frame.height
        }
        set {
            base.frame.size.height = newValue
        }
    }
}
