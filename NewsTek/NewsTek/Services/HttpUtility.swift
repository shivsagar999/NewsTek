//
//  HttpUtility.swift
//  NewsTek
//
//  Created by Shivsagar S Wagle on 20/01/24.
//

import Foundation

class HttpUtility {
    
    func getAPIData<T: Decodable>(request: URLRequest, resultType: T.Type, completionHandler: @escaping (T?, NTError?)->Void) {
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error  in
            
            if error != nil {
                completionHandler(nil, NTError.receivedError(message: error?.localizedDescription ?? "", code: 204))
                return
            }
            
            if let response = response as? HTTPURLResponse, response.statusCode != 200 {
                completionHandler(nil, NTError.invalidResponse(statusCode: response.statusCode))
                return
            }
            
            guard let data = data else {
                completionHandler(nil, NTError.noDataReceived)
                return
            }
            do {
                let data = try JSONDecoder().decode(T.self, from: data)
                completionHandler(data, nil)
            } catch {
                completionHandler(nil, NTError.serializationFailed)
                
            }
        }
        task.resume()
    }
    
    
    func postAPIData<T: Decodable>(request: URLRequest, resultType: T.Type, requestBody: Data, completionHandler: @escaping (T?, NTError?)->Void) {
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error  in
            
            if error != nil {
                completionHandler(nil, NTError.receivedError(message: error?.localizedDescription ?? "", code: 0))
                return
            }
            
            if let response = response as? HTTPURLResponse, response.statusCode != 200 {
                completionHandler(nil, NTError.invalidResponse(statusCode: response.statusCode))
                return
            }
            
            guard let data = data, data.count > 0 else {
                completionHandler(nil, nil)
                return
            }
            do {
                let data = try JSONDecoder().decode(T.self, from: data)
                completionHandler(data, nil)
            } catch {
                completionHandler(nil, NTError.serializationFailed)
                
            }
        }
    }
}



