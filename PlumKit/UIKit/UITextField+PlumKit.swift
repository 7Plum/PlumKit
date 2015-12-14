//
//  UITextField+PlumKit.swift
//  PlumKit
//
//  Created by Kingiol on 15/12/14.
//  Copyright © 2015年 Kingiol. All rights reserved.
//

import Foundation

public extension UITextField {
    
    // get textfield trim text
    public var trimText: String? {
        return text?.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    }
    
    // set textfield has text limit length
    public var textLimitLength: Int? {
        set {
            self.setAssociatedObject(textLimitLength!, forKey: "textLimitLength");
            self.addTarget(self, action: "textFieldChanged:", forControlEvents: .EditingChanged)
        }
        get {
            return self.getAssociatedObjectForKey("textLimitLength") as? Int
        }
    }
    
    private func textFieldChanged(textField: UITextField) {
        
        let textFieldText = textField.text!
        
        //获取高亮部分
        var textPosition: UITextPosition?
        if let selectedRanage = textField.markedTextRange {
            textPosition = textField.positionFromPosition(selectedRanage.start, offset: 0)
        }
        
        let maxLength = self.textLimitLength!
        
        // 没有高亮选择的字，则对已输入的文字进行字数统计和限制
        if textPosition == nil {
            let castTextFieldText = textFieldText as NSString
            if textFieldText.characters.count > maxLength {
                let rangeIndex = castTextFieldText.rangeOfComposedCharacterSequenceAtIndex(maxLength)
                if rangeIndex.length == 1 {
                    textField.text = castTextFieldText.substringToIndex(maxLength)
                }else {
                    let rangeRange = castTextFieldText.rangeOfComposedCharacterSequencesForRange(NSMakeRange(0, maxLength))
                    textField.text = castTextFieldText.substringWithRange(rangeRange)
                }
            }
        }
        
        sendActionsForControlEvents(.EditingChanged)
        
//        NSString *text = textField.text;
//        
//
//        UITextRange *selectedRange = [textField markedTextRange];
//        UITextPosition *position = [textField positionFromPosition:selectedRange.start offset:0];
//        
//        NSInteger maxLegnth = 5;
//        
//
//        if (!position)
//        {
//            if (text.length > maxLegnth)
//            {
//                NSRange rangeIndex = [text rangeOfComposedCharacterSequenceAtIndex:maxLegnth];
//                if (rangeIndex.length == 1)
//                {
//                    textField.text = [text substringToIndex:maxLegnth];
//                }
//                else
//                {
//                    NSRange rangeRange = [text rangeOfComposedCharacterSequencesForRange:NSMakeRange(0, maxLegnth)];
//                    textField.text = [text substringWithRange:rangeRange];
//                }
//            }
//        }
    }
}