//
//  Generator.swift
//  Right on Target
//
//  Created by Vitaliy Shmelev on 07.04.2022.
//

protocol GeneratorProtocol{
    func getRandomValue() -> Int
}

class NumberGeneration: GeneratorProtocol{
    private let startValue: Int
    private let endValue: Int
    init?(startRangeValue: Int, endRangeValue: Int){
        guard startRangeValue <= endRangeValue else {
            return nil
        }
        startValue = startRangeValue
        endValue = endRangeValue
    }
    func getRandomValue() -> Int {
        (startValue...endValue).randomElement()!
    }
    
}
