//
//  OptionalEx.swift
//  OptionalEx
//
//  Created by Masaki on 2015/12/21.
//  Copyright © 2015年 Masaki Otsubo. All rights reserved.
//

import UIKit

// オプショナル
class OptionalEx: UIView {
    var value: String! // 利用時に「通常の変数」に変換される「オプショナルな変数」
    
    // 描画時に呼ばれる
    override func drawRect(rect: CGRect) {
        // オプショナルな変数の定義
        let str: String? = nil // オプショナルな型にはnilを代入できる
        print(str)
        
        // 通常の変数にオプショナルな変数を代入
        let optionalValue: Int? = 10
        var newValue: Int
        if let value = optionalValue {
            newValue = value
            drawString("オプショナルな型の変数=\(newValue)", x:0, y:20)
        }
        
        // オプショナルな変数のプロパティ
        drawString("オプショナルな変数のプロパティ利用", x:0, y:20+2*26)
        let str0: String? = "3"
        let result0: Bool? = str0?.isEmpty
        drawString("nilでないとき：\(result0)", x:0, y:20+3*26)
        let str1: String? = nil
        let result1: Bool? = str1?.isEmpty
        drawString("nilのとき：\(result1)", x:0, y:20+4*26)
        
        // オプショナルな変数のメソッド利用
        drawString("オプショナルな変数のメソッド利用", x:0, y:20+6*26)
        let str2: String? = "あ"
        let result2: String? = str2?.stringByAppendingString("か")
        drawString("nilでないとき:\(result2)", x:0, y:20+7*26)
        let str3: String? = nil
        let result3: String? = str3?.stringByAppendingString("か")
        drawString("nilのとき:\(result3)", x:0, y:20+8*26)
        
        // 通常の変数に自動変換するオプショナルな変数
        drawString("通常の変数に自動変換するオプショナルな変数", x:0, y:20+10*26)
        let str4: String! = "あ"
        let result4: String? = str4.stringByAppendingString("か")
        drawString("nilでないとき：\(result4)", x:0, y:20+11*26)
    }
    // 文字列の描画
    func drawString(str:String, x:Int, y:Int) {
        let attrs = [NSFontAttributeName:UIFont.systemFontOfSize(24)]
        str.drawAtPoint(CGPointMake(CGFloat(x), CGFloat(y)), withAttributes: attrs)
    }
}
