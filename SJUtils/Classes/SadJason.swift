//
//  SadJason.swift
//  Pods
//
//  Created by zhangwei on 16/11/21.
//
//

import Foundation

/// 模仿RxSwift的Reactive，让对象「拥有」`.sj`属性，并在该属性的基础山根据需要扩充方法或属性（计算型属性）
public struct SadJason<Base> {
    var base: Base
    init(base: Base) {
        self.base = base
    }
}

protocol SadJasonCompitable {
    associatedtype CompitableType
    var sj: SadJason<CompitableType> { get set }
}

extension SadJasonCompitable {
    public var sj: SadJason<Self> {
        get {
            return SadJason(base: self)
        }
        set {
            // this enables using SadJason to "mutate" base object
        }
    }
}
