//
//  String+Utils.swift
//  Pods
//
//  Created by zhangwei on 16/11/5.
//
//

import Foundation

extension String {
    public func substring(from: UInt32) -> String {
        let offset = self.index(self.startIndex, offsetBy: String.IndexDistance(from))
        return self.substring(from: offset)
    }
}
