//
//  ViewController.swift
//  Right on Target
//
//  Created by Vitaliy Shmelev on 01.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //Сущность игра
    var game: Game!
    
    //Элементы на сцене
    @IBOutlet weak var UISlider: UISlider!
    @IBOutlet weak var UILabel: UILabel!
    
    //MARK: Жизненный цикл
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        //Создание экземпляра сущности
        let generator = NumberGeneration(startRangeValue: 1, endRangeValue: 50)!
        //создаем сущность игра
        game = Game(valueGenerator: generator, rounds: 5)
        // обновляем данные о текущем значении заданного числа
        updateLabelWithSecretNumber(newText:String(game.currentRound.currentSecretValue))
    }
    
    //MARK: Взаимодействие Model - View
    @IBAction func checkNumber(_ sender: Any) {
    //Высчитываем очки за раунд
    game.currentRound.calculateScore(withValue: Int(UISlider.value))
    //проверяем оконченна ли игра
            if game.isGameEnded{
    //показываем окно с итогами
                showAlertWith(score: game.score)
    //рестарт игры
                game.restartGame()
            }else{
    //начинаем новый раунд игры
                game.startNewRound()
            }
    //обновляем данные о текущем значении загаданного числа
            updateLabelWithSecretNumber(newText: String(game.currentRound.currentSecretValue))
        }

    
    //MARK: Обновление View
    // Обновление загаданного числа
    private func updateLabelWithSecretNumber(newText: String){
        UILabel.text = newText
    }
    //Отображение всплывающего окна со счетом
    private func showAlertWith(score: Int){
        let alert = UIAlertController(
            title: "Игра окончена",
            message: "Вы заработали \(score) очков",
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(
            title: "Начать заново",
            style: .default,
            handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
