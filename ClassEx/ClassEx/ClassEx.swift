//
//  ClassEx.swift
//  ClassEx
//
//  Created by Masaki on 2015/12/16.
//  Copyright © 2015年 Masaki Otsubo. All rights reserved.
//

import UIKit

// クラスの定義
class ClassEx: UIView {
    
    // 描画時に呼ばれる
    override func drawRect(rect: CGRect) {
        // 情報を指定しないで表示
        let device0 = Device()
        drawString(device0.info(), x:0, y:20+0*26)
        
        // プロパティで情報を指定して表示
        let device1 = Device()
        device1.name = "Device1"
        device1.version = 8
        drawString(device1.info(), x:0, y:20+1*26)
        
        // イニシャライザで情報を指定して表示
        let device2 = Device(name: "Device2", version: 9)
        drawString(device2.info(), x:0, y:20+2*26)
    }
    
    // 文字列の描画
    func drawString(str:String, x:Int, y:Int) {
        let attrs = [NSFontAttributeName: UIFont.systemFontOfSize(24)]
        str.drawAtPoint(CGPointMake(CGFloat(x), CGFloat(y)), withAttributes: attrs)
    }
}
