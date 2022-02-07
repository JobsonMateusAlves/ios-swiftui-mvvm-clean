//
//  CreateOperationParams.swift
//  
//
//  Created by Breno Aquino on 20/01/22.
//

import Foundation

public struct CreateOperationParams: Encodable {
    let title: String
    let date: String
    let value: Double
    let category: String
    let paymentMethod: String
    
    private enum CodingKeys : String, CodingKey {
        case title, date, category, value
        case paymentMethod = "payment_method"
    }
}
