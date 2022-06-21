//
//  UserDefaultSetting.swift
//  Squpiece
//
//  Created by 황정현 on 2022/06/06.
//

import Foundation

let highScoreNameList: [String] = ["I_HighScore", "A_HighScore", "E_HighScore", "F_HighScore", "T_HighScore"]
let maxComboNameList: [String] = ["I_MaxCombo", "A_MaxCombo", "E_MaxCombo", "F_MaxCombo", "T_MaxCombo"]

func dataSet(value: Int, key: String) {
    UserDefaults.standard.set(value, forKey: key)
}

func dataGet(key: String) -> Int {
    return UserDefaults.standard.integer(forKey: key)
}
