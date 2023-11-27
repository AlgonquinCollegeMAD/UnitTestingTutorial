//
//  ContentView.swift
//  UnitTestingTutorial
//
//  Created by Adesh Shah on 2023-11-27.
//

/*
 Unit Test
    - tests the business logic
    - any code which is not the view
    - more important and common
 
 UI Test
    - tests your UI of the app
    - tests the flow
 */

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm: UnitTestingViewModel
    init(isPreimum: Bool){
        _vm = StateObject(wrappedValue: UnitTestingViewModel(isPreimum: isPreimum))
    }
    var body: some View {
        Text(vm.isPreimum.description)
    }
}

#Preview {
    ContentView(isPreimum: true)
}
