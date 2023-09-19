//
//  DataPoint.swift
//  BudgetApp
//
//  Created by Daniel Arteaga on 9/20/23.
//

import Foundation

struct BudgetDataPoint: Identifiable {
    
    var id = UUID().uuidString
    var category: String
    var amount: Int 

}
