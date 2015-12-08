//: Playground - noun: a place where people can play

import UIKit

import PlumKit

let originalString = "123456"

let md2 = originalString.MD2
let md4 = originalString.MD4
let md5 = originalString.MD5
let sha1 = originalString.SHA1
let sha224 = originalString.SHA224
let sha256 = originalString.SHA256
let sha384 = originalString.SHA384
let sha512 = originalString.SHA512

assert(md5 == "e10adc3949ba59abbe56e057f20f883e", "md5 crypto error")
assert(sha1 == "7c4a8d09ca3762af61e59520943dc26494f8941b", "sha1 crypto error")
assert(sha224 == "f8cdb04495ded47615258f9dc6a3f4707fd2405434fefc3cbf4ef4e6", "sha224 crypto error")
assert(sha256 == "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92", "sha256 crypto error")
assert(sha384 == "0a989ebc4a77b56a6e2bb7b19d995d185ce44090c13e2984b7ecc6d446d4b61ea9991b76a4c2f04b1b4d244841449454", "sha384 crypto error")
assert(sha512 == "ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413", "sha512 crypto error")

let date = NSDate()
DateFormatHelper.formatToYearMonthDay(date)
DateFormatHelper.formatToTime(date)
