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
    
    /// A Credentials Validator
    ///
    /// This is for checking credentials
    /// - Parameters:
    ///   - username: a string representing the username
    ///   - password: a string representing the password
    /// - Throws: An error of type `CredentialErrors`
    /// - Returns: Returns true if no errors are thrown
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
