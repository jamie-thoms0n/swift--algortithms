//
//  Sortingtest.swift
//  StandardAlgorithmTests
//
//  Created by Thomson, Jamie (NA) on 16/11/2021.
//

import XCTest

class Sortingtest: XCTestCase {

    func testBubbleSortWithUnsortedArrayReturnsSortedArray (){
        //arrage
        let sorting = Sorting()
        let testCases = [(input: [2,5,6,8,2], expected: [2,2,5,6,8]),
                         (),
                         (),]

        //act
        //assert
        for testCase in testCases{
            let actual = sorting.bubbleSort(testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    func testBubbleSortWithEmptyArrayReturnsEmptyArray(){
        //arrange
        let sorting = Sorting()
        let data = [Int]()
        let expected = [Int]()
        //act
        let actual = sorting.bubbleSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    func testBubbleSortWithAlreadySortedArrayReturnsSortedArray(){
        //arrange
        let sorting = Sorting()
        let data = [2,2,5,6,8]
        let expected = [2,2,5,6,8]
        //act
        let actual = sorting.bubbleSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    func testBubbleSortWithErroneousDataArrayReturnsError(){
        //arrange
        let sorting =  Sorting()
        let data = ["DGawg","eag","efargawGrwgrawfrgdfgasf"]
        let expected = [Int]()
        //act
        let actual = sorting.bubbleSort(data)
        //assert
        XCTAssertEqual(actual,expected)
    }
}
