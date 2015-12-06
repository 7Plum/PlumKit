//
//  String+PlumKit.swift
//  PlumKit
//
//  Created by Kingiol on 15/12/6.
//  Copyright © 2015年 Kingiol. All rights reserved.
//

//#if os(iOS) || os(tvOS) || os(watchOS)
//    import UIKit
//#elseif os(OSX)
//    import AppKit
//#endif

import Foundation
import CommonCrypto


public extension String {
    
    /**
     Returns a lowercase String for md5 hash.
    */
    public func md5String() -> String {
        return ""
        
        
        //        let str = self.cStringUsingEncoding(NSUTF8StringEncoding)
        //        let strLen = CC_LONG(self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))
        //        let digestLen = Int(CC_MD5_DIGEST_LENGTH)
        //        let result = UnsafeMutablePointer<CUnsignedChar>.alloc(digestLen)
        //
        //        CC_MD5(str!, strLen, result)
        //
        //        var hash = NSMutableString()
        //        for i in 0..<digestLen {
        //            hash.appendFormat("%02x", result[i])
        //        }
        //
        //        result.dealloc(digestLen)
        //        
        //        return String(format: hash)
    }
    
}
