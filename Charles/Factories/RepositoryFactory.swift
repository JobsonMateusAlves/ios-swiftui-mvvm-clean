//
//  RepositoryFactory.swift
//  Charles
//
//  Created by Breno Aquino on 20/01/22.
//

import Foundation
import Domain
import Data

enum RepositoryFactory {
    
    static func operations() -> OperationsRepository {
        return OperationsRepositoryImpl(remoteDataSource: RemoteDataSourceFactory.operations(),
                                        paymentMethodsLocalDataSource: LocalDataSourceFactory.paymentMethods(),
                                        categoriesLocalDataSource: LocalDataSourceFactory.categories())
    }
    
    static func categories() -> CategoriesRepository {
        return CategoriesRepositoryImpl(remoteDataSource: RemoteDataSourceFactory.categories(),
                                        localDataSource: LocalDataSourceFactory.categories())
    }
    
    static func paymentMethods() -> PaymentMethodsRepository {
        return PaymentMethodsRepositoryImpl(remoteDataSource: RemoteDataSourceFactory.paymentMethods(),
                                            localDataSource: LocalDataSourceFactory.paymentMethods())
    }
}
