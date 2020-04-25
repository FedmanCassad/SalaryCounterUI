//
//  EditViewController.swift
//  SalaryCounter2
//
//  Created by Ivan Belyakov on 21.04.2020.
//  Copyright © 2020 Ivan Belyakov. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var salaryAmountTextField: UITextField!
    @IBOutlet weak var dayOfSalaryTextField: UITextField!
    var timer = SalaryTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
  
  

      @IBAction func toSpendButtonAction(_ sender: Any) {
        guard  self.timer.setSalaryAmount(salaryAmountTextField.text) else {
             let alert = UIAlertController(title: "Внимание!", message: "В поле суммы зарплаты должно быть числовое значение, можно дробное.", preferredStyle: .alert)
             alert.addAction(UIAlertAction(title: "Ладно", style: .default, handler: nil))
             self.present(alert, animated: true, completion: nil)
             salaryAmountTextField.text = ""
             return
           }
        guard self.timer.setDayOfSalary(dayOfSalaryTextField.text) else {
             let alert = UIAlertController(title: "Внимание!", message: "В поле даты зарплаты должно быть значение от 1 до 28", preferredStyle: .alert)
                 alert.addAction(UIAlertAction(title: "Ладно", style: .default, handler: nil))
                 self.present(alert, animated: true, completion: nil)
                 dayOfSalaryTextField.text = ""
             return
           }
        
        let destionation = storyboard?.instantiateViewController(identifier: "TimerViewController") as! TimerViewController
        destionation.container = self.timer
        destionation.modalPresentationStyle = .fullScreen
        destionation.modalTransitionStyle = .coverVertical
       present(destionation, animated: true, completion: nil)
     }

     
   
}
