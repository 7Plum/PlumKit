//
//  NSObject+PlumKit.swift
//  PlumKit
//
//  Created by Kingiol on 15/12/7.
//  Copyright © 2015年 Kingiol. All rights reserved.
//

import Foundation

// MARK: - Runtime Associated Object

private let ExtraKeyValueKey = "ExtraKeyValueKey"

public extension NSObject {
    
    public func getAssociatedObjectForKey(key: String) -> AnyObject? {
        let associatedObject = getAllAssociatedObject()
        return associatedObject[key]
    }
    
    public func setAssociatedObject(object: AnyObject, forKey key: String) {
        var associatedObject = getAllAssociatedObject()
        associatedObject[key] = object
        objc_setAssociatedObject(self, ExtraKeyValueKey, associatedObject, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
    
    public func getAllAssociatedObject() -> [String : AnyObject] {
        if let associatedObject = objc_getAssociatedObject(self, ExtraKeyValueKey) as? [String : AnyObject] {
            return associatedObject
        }else {
            return [String : AnyObject]()
        }
    }
    
    public func removeAssociatedObjectForKey(key: String) {
        var associatedObject = getAllAssociatedObject()
        if associatedObject.keys.contains(key) {
            associatedObject.removeValueForKey(key)
        }
        objc_setAssociatedObject(self, ExtraKeyValueKey, associatedObject, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
    
    public func removeAllAssociatedObject() {
        objc_removeAssociatedObjects(self)
    }
}