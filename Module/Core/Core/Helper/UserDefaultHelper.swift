//
//  UserDefaultHelper.swift
//  Core
//
//  Created by MacBook on 24/05/21.
//

import Foundation

public class UserDefaultHelper {
    
    public static var shared: UserDefaultHelper = UserDefaultHelper()
    
    var defaults = UserDefaults.standard
    
    public func set<T>(key: UserDefaultHelper.Key, value: T) {
        self.defaults.set(value, forKey:  key.rawValue)
    }
    
    public func get<T>(key: UserDefaultHelper.Key) -> T? {
        self.defaults.object(forKey: key.rawValue) as? T
    }
    
    public func remove(key: UserDefaultHelper.Key) {
        self.defaults.removeObject(forKey: key.rawValue)
    }
    
}

public extension UserDefaultHelper {
    enum Key: String {
        case userEmail
        case userToken
        case userTokenExpired
        case refreshToken
    }
    
}


