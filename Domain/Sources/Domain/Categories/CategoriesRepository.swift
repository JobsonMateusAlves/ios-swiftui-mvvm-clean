//
//  CategoriesRepository.swift
//  
//
//  Created by Breno Aquino on 08/02/22.
//

import Foundation
import Combine

public protocol CategoriesRepository {
    func fetchCategories() -> AnyPublisher<[Category], CharlesError>
}
