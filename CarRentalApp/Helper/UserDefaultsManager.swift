//
//  UserDefaultsManager.swift
//  CarRentalApp
//
//  Created by Mac on 22.12.24.
//

import Foundation

enum UserDefaultsTypes: String {
    case isLoggedIn = "isLoggedIn"
}

class UserDefaultsManager {
    func setValue(value: Any, key: UserDefaultsTypes) {
        UserDefaults.standard.set(value, forKey: key.rawValue)
    }
    
    func getBool(key: UserDefaultsTypes) -> Bool {
        UserDefaults.standard.bool(forKey: key.rawValue)
    }
}
