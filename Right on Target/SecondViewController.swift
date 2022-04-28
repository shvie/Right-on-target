//
//  SecondViewController.swift
//  Right on Target
//
//  Created by Vitaliy Shmelev on 04.04.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    //элементы на сцене
    @IBOutlet weak var textPravil: UILabel!
    
    //MARK: Жизненный цикл View
    
    override func loadView() {
        super.loadView()
        print("loadView SecondViewController")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad SecondViewController")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear SecondViewController")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidApper SecondViewController")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear SecondViewController")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear SecondViewController")
    }
    

    
}
