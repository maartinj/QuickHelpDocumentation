//
//  Services.swift
//  Documentation Example
//
//  Created by Stewart Lynch on 2020-02-15.
//  Copyright © 2020 CreaTECH Solutions. All rights reserved.
//

import Foundation

struct Service {
    
    enum CredentialErrors: Error {
        case badUserName
        case badPassword
    }
    
    static func validateCredentials(username: String, password: String) throws -> Bool {
        if username.count < 4 {
            throw CredentialErrors.badUserName
        }
        if (password.rangeOfCharacter(from: NSCharacterSet.decimalDigits) == nil) {
            throw CredentialErrors.badPassword
        }
        return true
    }
}
