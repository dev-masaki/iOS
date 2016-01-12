//
//  StringEx.swift
//  StringEx
//
//  Created by Masaki on 2016/01/12.
//  Copyright © 2016年 Masaki Otsubo. All rights reserved.
//

import UIKit

// 文字列の描画
class StirngEx: UIView {
    
    // 描画時に呼ばれる
    override func drawRect(rect: CGRect) {
        // 描画サイズの取得
        let w = UIScreen.mainScreen().bounds.size.width
        let h = UIScreen.mainScreen().bounds.size.height
        drawString("画面サイズ\(Int(w))x\(Int(h))", x:0, y:20)
        
        // 文字列サイズの取得
        let size = getStringSize("A")
        drawString("文字幅: \(Int(size.width))", x:0, y:20+26)
        
        // 12ポイントの文字列の描画
        drawString("12ポイント", x:0, y:20+26*2, size: 12, color: UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0))
        
        // 16ポイントの文字列の描画
        drawString("16ポイント", x:0, y:20+26*3, size: 16, color: UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 1.0))
        
        // 24ポイントの文字列の描画
        drawString("24ポイント", x:0, y:20+26*4, size: 24, color: UIColor(red: 0/255, green: 0/255, blue: 255/255, alpha: 1.0))
    }
    
    // 文字サイズの取得
    func getStringSize(str: String, size: Float = 24) -> CGSize {
        let attrs = [NSFontAttributeName: UIFont.systemFontOfSize(CGFloat(size))]
        return str.sizeWithAttributes(attrs)
    }
    
    func drawString(str: String, x: Int, y: Int, size: Float = 24, color: UIColor = UIColor.blackColor()) {
        let attrs = [NSFontAttributeName: UIFont.systemFontOfSize(CGFloat(size)), NSForegroundColorAttributeName: color]
        str.drawAtPoint(CGPointMake(CGFloat(x), CGFloat(y)), withAttributes:  attrs)
    }
}
