//
//  HomeViewController.swift
//  memotaku
//
//  Created by 佐々木遼平 on 2023/09/22.
//

import Foundation
import UIKit
import SwiftData

class HomeViewController: UIViewController, UITableViewDelegate  {
    
    var editData = mainCellModel()
    
    private let calculator = Calculator()
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {}
    
    
    var data = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // カスタムセルをNibファイルから登録
        tableView.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "MainCell")
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
        
    }
    
    // TwitterViewControllerのdelegateプロパティに自身を代入
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCalculator" {
            let nextView = segue.destination as! Calculator
            nextView.delegate = self
            nextView.editData = editCellData
        }
        editCellData = mainCellModel()
    }
    
    
    @IBAction func clear(_ sender: Any) {
        calculator.clear()
        resultLabel.text = calculator.resultText
    }
    
    
    @IBAction func number0(_ sender: Any) {
        calculator.number0()
        resultLabel.text = calculator.resultText
    }
    
    @IBAction func number1(_ sender: Any) {
        calculator.number1()
        resultLabel.text = calculator.resultText
    }
    
    @IBAction func number2(_ sender: Any) {
        calculator.number2()
        resultLabel.text = calculator.resultText
    }
    
    @IBAction func number3(_ sender: Any) {
        calculator.number3()
        resultLabel.text = calculator.resultText
    }
    
    @IBAction func number4(_ sender: Any) {
        calculator.number4()
        resultLabel.text = calculator.resultText
    }
    
    @IBAction func number5(_ sender: Any) {
        calculator.number5()
        resultLabel.text = calculator.resultText
    }
    
    @IBAction func number6(_ sender: Any) {
        calculator.number6()
        resultLabel.text = calculator.resultText
    }
    
    @IBAction func number7(_ sender: Any) {
        calculator.number7()
        resultLabel.text = calculator.resultText
    }
    
    @IBAction func number8(_ sender: Any) {
        calculator.number8()
        resultLabel.text = calculator.resultText
    }
    
    @IBAction func number9(_ sender: Any) {
        calculator.number9()
        resultLabel.text = calculator.resultText
    }
    
    @IBAction func equal(_ sender: Any) {
        calculator.equal()
        resultLabel.text = calculator.resultText
    }
    
    @IBAction func add(_ sender: Any) {
        calculator.addition()
        resultLabel.text = calculator.resultText
    }
    
    @IBAction func sub(_ sender: Any) {
        calculator.subtraction()
        resultLabel.text = calculator.resultText
    }
    
    @IBAction func mult(_ sender: Any) {
        calculator.multiplication()
        resultLabel.text = calculator.resultText
    }
    
    @IBAction func div(_ sender: Any) {
        calculator.division()
        resultLabel.text = calculator.resultText
    }
    
}




extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainTableViewCell
        
        // カスタムセルの各アウトレットにデータを設定
        cell.mainTitle.text = data[indexPath.row]
        cell.mainDate.text = "Some Date" // 日付を設定する例
        
        return cell
    }
    
}
extension HomeViewController: TableViewCellDelegate {
    func segue(sizeData: mainCellModel) {
        editData  = sizeData
        // 別の画面に遷移
        performSegue(withIdentifier: "toCalculator", sender: nil)
    }
    
    
}
