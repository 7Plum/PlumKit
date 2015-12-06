//
//  NSData+PlumKit.swift
//  PlumKit
//
//  Created by Kingiol on 15/12/6.
//  Copyright © 2015年 Kingiol. All rights reserved.
//

import Foundation
import CommonCrypto

// MARK: - Crypto

extension NSData {
    
    enum CryptoType: Int {
        case MD2
        case MD4
        case MD5
        case SHA1
        case SHA224
        case SHA256
        case SHA384
        case SHA512
    }

    public var MD2: NSData {
        let hash = digestHash(.MD2)
        return NSData(bytes: hash, length: hash.count)
    }
    
    public var MD4: NSData {
        let hash = digestHash(.MD4)
        return NSData(bytes: hash, length: hash.count)
    }
    
    public var MD5: NSData {
        let hash = digestHash(.MD5)
        return NSData(bytes: hash, length: hash.count)
    }
    
    public var SHA1: NSData {
        let hash = digestHash(.SHA1)
        return NSData(bytes: hash, length: hash.count)
    }
    
    public var SHA224: NSData {
        let hash = digestHash(.SHA224)
        return NSData(bytes: hash, length: hash.count)
    }
    
    public var SHA256: NSData {
        let hash = digestHash(.SHA256)
        return NSData(bytes: hash, length: hash.count)
    }
    
    public var SHA384: NSData {
        let hash = digestHash(.SHA384)
        return NSData(bytes: hash, length: hash.count)
    }
    
    public var SHA512: NSData {
        let hash = digestHash(.SHA512)
        return NSData(bytes: hash, length: hash.count)
    }
    
    private func digestHash(cryptoType: CryptoType) -> [UInt8] {
        switch cryptoType {
        case .MD2:
            var hash = [UInt8](count: Int(CC_MD2_DIGEST_LENGTH), repeatedValue: 0)
            CC_MD2(bytes, CC_LONG(length), &hash)
            return hash
        case .MD4:
            var hash = [UInt8](count: Int(CC_MD4_DIGEST_LENGTH), repeatedValue: 0)
            CC_MD4(bytes, CC_LONG(length), &hash)
            return hash
        case .MD5:
            var hash = [UInt8](count: Int(CC_MD5_DIGEST_LENGTH), repeatedValue: 0)
            CC_MD5(bytes, CC_LONG(length), &hash)
            return hash
        case .SHA1:
            var hash = [UInt8](count: Int(CC_SHA1_DIGEST_LENGTH), repeatedValue: 0)
            CC_SHA1(bytes, CC_LONG(length), &hash)
            return hash
        case .SHA224:
            var hash = [UInt8](count: Int(CC_SHA224_DIGEST_LENGTH), repeatedValue: 0)
            CC_SHA224(bytes, CC_LONG(length), &hash)
            return hash
        case .SHA256:
            var hash = [UInt8](count: Int(CC_SHA256_DIGEST_LENGTH), repeatedValue: 0)
            CC_SHA256(bytes, CC_LONG(length), &hash)
            return hash
        case .SHA384:
            var hash = [UInt8](count: Int(CC_SHA384_DIGEST_LENGTH), repeatedValue: 0)
            CC_SHA384(bytes, CC_LONG(length), &hash)
            return hash
        case .SHA512:
            var hash = [UInt8](count: Int(CC_SHA512_DIGEST_LENGTH), repeatedValue: 0)
            CC_SHA512(bytes, CC_LONG(length), &hash)
            return hash
        }
    }
    
}