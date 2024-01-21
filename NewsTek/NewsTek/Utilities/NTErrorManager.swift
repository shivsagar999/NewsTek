//
//  NTErrorManager.swift
//  NewsTek
//
//  Created by Shivsagar S Wagle on 21/01/24.
//

import Foundation


enum NTError: Error {
    case generateError(message: String, code: Int)
    case receivedError(message: String, code: Int)
    case invalidResponse(statusCode: Int)
    case noDataReceived
    case serializationFailed
    case incompleteDataReceived
    
}

extension NTError: LocalizedError {
    
    var errorDescription: String? {
        switch self {
            
        case .generateError(message: let message, code: let code):
            return ""
        case .receivedError(message: let message, code: let code):
            return NSLocalizedString("Received Error - \(message) with code \(code)", comment: "")
        case .invalidResponse(statusCode: let statusCode):
            return ""
        case .noDataReceived:
            return ""
        case .serializationFailed:
            return ""
        case .incompleteDataReceived:
            return ""
        }
    }
}
