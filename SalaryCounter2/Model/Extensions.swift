//
//  TimeModel.swift
//  SalaryCounter2
//
//  Created by Ivan Belyakov on 17.04.2020.
//  Copyright © 2020 Ivan Belyakov. All rights reserved.
//

import Foundation

extension Date {


func dayDate() -> String {
    let date = Date()
    // Создаем  форматор дат
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd" // формат даты
    let dayString = dateFormatter.string(from: date)
    return dayString
}

func monthDate() -> String {
    let date = Date()
    // Создаем  форматор дат
    let dateFormatter = DateFormatter()
    dateFormatter.locale = Locale(identifier: "ru_RU")
    dateFormatter.dateFormat = "MMMM"
    return dateFormatter.string(from: date)
    
}
}
