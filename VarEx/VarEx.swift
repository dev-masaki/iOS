//
//  VarEx.swift
//  VarEx
//
//  Created by Masaki on 2015/12/11.
//  Copyright © 2015年 Masaki Otsubo. All rights reserved.
//

import UIKit

// 変数
class VarEx: UIView {
    
    // 描画時に呼ばれる
    override func drawRect(rect: CGRect) {
        // 変数の定義
        var num0: Int // 数値0
        var num1: Int // 数値1
        var sum: Int  // 合計
        
        // 値の代入
        num0 = 100
        num1 = 200
        sum  = num0 + num1
        
        // 文字列の生成
        let str: String = "合計=\(sum)"
        // デバッグエリアに表示
        print("合計=\(sum)")
        
        // 文字列の描画
        drawString(str, x:0, y:20)
    }
    
    // 文字列の描画
    func drawString(str: String, x: Int, y: Int) {
        let attrs = [NSFontAttributeName: UIFont.systemFontOfSize(24)]
        str.drawAtPoint(CGPointMake(CGFloat(x),CGFloat(y)), withAttributes: attrs)
    }
}
