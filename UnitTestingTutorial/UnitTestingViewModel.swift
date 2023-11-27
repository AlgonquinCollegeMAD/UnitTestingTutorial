//
//  UnitTestingViewModel.swift
//  UnitTestingTutorial
//
//  Created by Adesh Shah on 2023-11-27.
//

import Foundation
import SwiftUI

class UnitTestingViewModel: ObservableObject{
    @Published var isPreimum: Bool
    @Published var dataArray: [String] = []
    
    init(isPreimum: Bool){
        self.isPreimum = isPreimum
    }
    
    func addItem(item: String){
        self.dataArray.append(item)
    }
}
