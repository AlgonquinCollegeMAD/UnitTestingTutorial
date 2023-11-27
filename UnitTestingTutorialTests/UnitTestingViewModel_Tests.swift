//
//  UnitTestingViewModel_Tests.swift
//  UnitTestingTutorialTests
//
//  Created by Adesh Shah on 2023-11-27.
//

import XCTest
@testable import UnitTestingTutorial
// Naming Structure: test_UnitOfWork_StateUnderTest_ExpectedBehavior

// Testing Structure: Given, When, Then

final class UnitTestingViewModel_Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_UnitTestViewModel_isPremium_shouldBeTrue(){
        // Given
        
        let userIsPremium: Bool = true
        
        // When
        let vm = UnitTestingViewModel(isPreimum: userIsPremium)
        // Then
        XCTAssertTrue(vm.isPreimum)
    }

    func test_UnitTestViewModel_isPremium_shouldBeFalse(){
        
        // Given
        let userIsPremium: Bool = false
        // When
        let vm = UnitTestingViewModel(isPreimum: userIsPremium)
        // Then
        XCTAssertFalse(vm.isPreimum)
    }
    func test_UnitTestViewModel_isPremium_shouldBeInjectedValue(){
        
        // Given
        let userIsPremium: Bool = Bool.random()
        // When
        let vm = UnitTestingViewModel(isPreimum: userIsPremium)
        // Then
        XCTAssertEqual(vm.isPreimum, userIsPremium)
    }
    func test_UnitTestViewModel_isPremium_shouldBeInjectedValue_stress(){

        for _ in 0..<10 {
            // Given
            let userIsPremium: Bool = Bool.random()
            // When
            let vm = UnitTestingViewModel(isPreimum: userIsPremium)
            // Then
            XCTAssertEqual(vm.isPreimum, userIsPremium)
        }
    }
    
    func test_UnitTestViewModel_dataArray_shouldBeEmpty(){
        //Given
        
        //When
        let vm = UnitTestingViewModel(isPreimum: Bool.random())
        //Then
        XCTAssertTrue(vm.dataArray.isEmpty)
    }
    func test_UnitTestViewModel_dataArray_shouldAddItem(){
        //Given
        let vm = UnitTestingViewModel(isPreimum: Bool.random())
        //When
        vm.addItem(item: "Adesh")
        //Then
        XCTAssertTrue(!vm.dataArray.isEmpty)
        XCTAssertFalse(vm.dataArray.isEmpty)
        XCTAssertEqual(vm.dataArray.count, 1)
        XCTAssertGreaterThan(vm.dataArray.count, 0, "True")
    }
}
