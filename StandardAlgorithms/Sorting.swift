//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Thomson, Jamie (NA) on 16/11/2021.
//

import Foundation

class Sorting {
    
    func bubbleSort(_ data : [Int]) -> [Int] {
        var data = data
        var sort = false
        var lastMarker = data.count - 1
        while sort == false {
            var swapsMade = 0
            for i in (0...lastMarker) {
                if data[i] > data[i+1]{
                    var placeHolder = data[i]
                    data[i] = data[i + 1]
                    data[i + 1] = placeHolder
                    swapsMade += 1
                }
            }
            lastMarker -= 1
            if swapsMade == 0{
                sort = true
            }
        }
    return data
    }
    
    func testBubbleSortPerformance(){
        let sorting = Sorting()
        let testArray = [41285,1246536,54,764,7,3,63,5,76,3866,352,41,56,3768,79,80,96,85746,73562,4513,4653,746857,986079,-608957,46837562,45134,546,2357468457,980679,85786,4536245,13]
        //act
        measure {
            _ = sorting.bubbleSort(testArray)
        }
        
        
        
    }

    func insertionSort(_ data : [Int]) ->  [Int]{
        var data = [Int]()
                for i in 0...(data.count - 1){
                    var temp = data[i]
                    var j = i - 1
                    while j >= 0 && data[j] > temp {
                        data[j+1] = data[j]
                        j = j - 1
                    }
                    data[j + i] = temp
                }
        return[data]
    }
}
