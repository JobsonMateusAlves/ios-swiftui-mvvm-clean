//
//  CategoryDTO.swift
//  
//
//  Created by Breno Aquino on 08/02/22.
//

import Foundation
import Domain

public struct CategoryDTO: Decodable {
    public let id: Int
    public let name: String
}

public extension CategoryDTO {
    func toDomain() -> Domain.Category {
        return Domain.Category(id: id, name: name)
    }
}
