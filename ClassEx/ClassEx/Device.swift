//
//  Device.swift
//  ClassEx
//
//  Created by Masaki on 2015/12/16.
//  Copyright © 2015年 Masaki Otsubo. All rights reserved.
//

import UIKit

// Deviceクラス
class Device {
    // プロパティの定義
    var name: String = ""  // 名前
    var version: Int = 0  // バージョン
    
    // メソッドの定義
    func info() -> String {
        return "\(name)のバージョンは\(version)"
    }
    
    // 引数なしのイニシャライザ
    convenience init() {
        self.init(name: "none", version: 1)
    }
    
    // 引数ありのイニシャライザ
    init(name: String, version: Int) {
        self.name = name
        self.version = version
    }
}
