//
//  Contact.swift
//  ContactsListHW
//
//  Created by Кирилл Нескоромный on 14.04.2021.
//


struct Contact {
    let name: String
    let surname: String
    
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}

extension Contact {
    
    static func getContactsList() -> [Contact] {
        
        var contacts: [Contact] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        // находим минимальное количество элементов среди заданных массивов
        let count = min(names.count, surnames.count, phones.count, emails.count)
        
        // вместо -1 использовать полузакрытые диапазоны
        for iteration in 0..<count {
            let contact = Contact(
                name: names[iteration],
                surname: surnames[iteration],
                phone: phones[iteration],
                email: emails[iteration]
            )
            
            contacts.append(contact)
        }
        
        return contacts
        
    }
    
}




