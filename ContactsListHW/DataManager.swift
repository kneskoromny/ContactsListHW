//
//  Elements.swift
//  ContactsListHW
//
//  Created by Кирилл Нескоромный on 14.04.2021.
//


class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "Иван", "Алексей", "Александр", "Дмитрий", "Игорь"
    ]
    
    let surnames = [
        "Иванов", "Петров", "Сидоров", "Семенов", "Алексеев"
    ]
    
    let phones = [
        "11111", "22222", "333333", "44444", "55555"
    ]
    
    let emails = [
        "mail1@mail.ru","mail2@mail.ru",
        "mail3@mail.ru","mail4@mail.ru",
        "mail5@mail.ru"
    ]
    
    private init() {}
}
