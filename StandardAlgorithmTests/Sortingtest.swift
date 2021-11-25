//
//  Sortingtest.swift
//  StandardAlgorithmTests
//
//  Created by Thomson, Jamie (NA) on 16/11/2021.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithUnsortedArrayReturnsSortedArray() {
        //arrage
        let sorting = Sorting()
        let testCases = [(input: [2,5,6,8,2], expected: [2,2,5,6,8]),
                         (input: [2,2,5,6,8], expected: [2,2,5,6,8]),
                         (input: [2,3,54,52472,25,7343,73], expected: [2,3,25,54,73,7343,52472])]

        //act
        //assert
        for testCase in testCases{
            let actual = sorting.bubbleSort(testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testInsertionSortWithUnsortedArrayReturnsSortedArray() {
        //arrage
        let sorting = Sorting()
        let testCases = [(input: [2,5,6,8,2], expected: [2,2,5,6,8]),
                        (input: [2,2,5,6,8], expected: [2,2,5,6,8]),
                        (input: [2,3,54,52472,25,7343,73], expected: [2,3,25,54,73,7343,52472])]
        //act
        //arrange
        for testCase in testCases {
            let actual = sorting.insertionSort(testCase.input)
            XCTestAssertEqual(actual, testCase.expected)
            
        }
    }
}
