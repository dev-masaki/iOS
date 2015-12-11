//
//  HelloWorld.swift
//  HelloWorld
//
//  Created by Masaki on 2015/12/11.
//  Copyright © 2015年 Masaki Otsubo. All rights reserved.
//

import UIKit

// Hello World
class HelloWorld: UIView {
    // 描画時に呼ばれる
    override func drawRect(rect: CGRect){
        // 文字列の描画
        let attrs = [NSFontAttributeName: UIFont.systemFontOfSize(24)]
        let str = "Hello World"
        let nsstr = str as NSString
        nsstr.drawAtPoint(CGPointMake(0,20), withAttributes: attrs)
    }
}
