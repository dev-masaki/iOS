//
//  ObjectEx.swift
//  ObjectEx
//
//  Created by Masaki on 2015/12/15.
//  Copyright © 2015年 Masaki Otsubo. All rights reserved.
//

import UIKit

// オブジェクト
class ObjectEx: UIView {
    
    // 描画時に呼ばれる
    override func drawRect(rect: CGRect) {
        // オブジェクト型の変数の定義
        let calendar: NSCalendar =
            NSCalendar(calendarIdentifier:
            NSCalendarIdentifierGregorian)!
        
        // 取得情報フラグの準備
        let flags: NSCalendarUnit = [
            NSCalendarUnit.Year,
            NSCalendarUnit.Month,
            NSCalendarUnit.Day,
            NSCalendarUnit.Hour,
            NSCalendarUnit.Minute]
        
        // 日付コンポーネントの取得
        let comps = calendar.components(flags, fromDate: NSDate())
        
        // 年月日の取得
        let year = comps.year
        let month = comps.month
        let day = comps.day
        let hour = comps.hour
        let minute = comps.minute
        
        // 文字列の描画
        let str = "\(year)年\(month)月\(day)日 \(hour)時\(minute)分"
        drawString(str, x:0, y:20)
        
    }
    
    //文字列の描画
    func drawString(str: String, x:Int, y:Int) {
        let attrs = [NSFontAttributeName: UIFont.systemFontOfSize(24)]
        str.drawAtPoint(CGPointMake(CGFloat(x), CGFloat(y)), withAttributes: attrs)
    }
}
