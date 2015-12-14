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

// MARK: - Crypto

public extension String {
    
    /**
     Return a String for MD2 hash.
    */
    public var MD2: String? {
        return String(hashData: hashData?.MD2, length: CC_MD2_DIGEST_LENGTH)
    }
    
    /**
     Return a String for MD4 hash.
    */
    public var MD4: String? {
        return String(hashData: hashData?.MD4, length: CC_MD4_DIGEST_LENGTH)
    }
    
    /**
     Return a String for MD5 hash.
    */
    public var MD5: String? {
        return String(hashData: hashData?.MD5, length: CC_MD5_DIGEST_LENGTH)
    }
    
    /**
     Return a String for SHA1 hash.
     */
    public var SHA1: String? {
        return String(hashData: hashData?.SHA1, length: CC_SHA1_DIGEST_LENGTH)
    }
    
    /**
     Return a String for SHA224 hash.
     */
    public var SHA224: String? {
        return String(hashData: hashData?.SHA224, length: CC_SHA224_DIGEST_LENGTH)
    }
    
    /**
     Return a String for SHA256 hash.
    */
    public var SHA256: String? {
        return String(hashData: hashData?.SHA256, length: CC_SHA256_DIGEST_LENGTH)
    }
    
    /**
     Return a String for SHA384 hash.
     */
    public var SHA384: String? {
        return String(hashData: hashData?.SHA384, length: CC_SHA384_DIGEST_LENGTH)
    }
    
    /**
     Return a String for SHA512 hash.
     */
    public var SHA512: String? {
        return String(hashData: hashData?.SHA512, length: CC_SHA512_DIGEST_LENGTH)
    }
    
    private var hashData: NSData? {
        return dataUsingEncoding(NSUTF8StringEncoding)
    }
    
    private init?(hashData: NSData?, length: Int32) {
        guard let hashData = hashData else { return nil }
        
        var digest = [UInt8](count: Int(length), repeatedValue: 0)
        hashData.getBytes(&digest, length: Int(length) * sizeof(UInt8))
        
        var string = ""
        for i in 0..<length {
            string += String(format: "%02x", digest[Int(i)])
        }
        self.init(string)
    }
}

public extension String {
    
    subscript (i: Int) -> Character {
        return self[self.startIndex.advancedBy(i)]
    }
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    subscript (r: Range<Int>) -> String {
        return substringWithRange(Range(start: startIndex.advancedBy(r.startIndex), end: startIndex.advancedBy(r.endIndex)))
    }
    
}
