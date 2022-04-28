//
//  GameRound.swift
//  Right on Target
//
//  Created by Vitaliy Shmelev on 07.04.2022.
//

protocol GameRoundProtocol{
    // количество заработанных очков
    var score: Int {get}
    //загаданное значение
    var currentSecretValue: Int {get}
    //подсчет заработанных за раунд очков
    func calculateScore(withValue: Int)
}

class GameRound: GameRoundProtocol{
    var score: Int = 0
    var currentSecretValue: Int = 0
    
    init(secretValue: Int){
        currentSecretValue = secretValue
    }
    //подсчитывает количество очков
    func calculateScore(withValue: Int) {
        if withValue > currentSecretValue {
            score = 50 - withValue + currentSecretValue
        }else if withValue < currentSecretValue {
            score = 50 - currentSecretValue + withValue
        }else{
            score = 50
        }
    }
}
