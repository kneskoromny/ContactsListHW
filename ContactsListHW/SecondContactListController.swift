//
//  SecondContactListController.swift
//  ContactsListHW
//
//  Created by Кирилл Нескоромный on 14.04.2021.
//

import UIKit

class SecondContactListController: UITableViewController {
    
    var contacts: [Contact]!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    // указываем количество секций равное количеству контактов
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    // указываем заголовок для секции, section определяет индекс секции - по нему и подставляем имя элемента из массива
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
        
    }
   // указываем количество строк в секции
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    // настраиваем контент ячейки
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // определяем ячейку
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // извлекаем экземпляр модели по индексу секции, в которой она находится
        let contact = contacts[indexPath.section]
        
        // присваиваем переменной тип UIListContentConfiguration,
        // чтобы получить доступ к свойствам для передачи данных из модели
        var content = cell.defaultContentConfiguration()
        
        // исходя из индекса строки внутри секции определяем что будем там показывать
        if indexPath.row == 0 {
            content.text = contact.phone
            content.image = UIImage(systemName: "iphone")
        } else {
            content.text = contact.email
            content.image = UIImage(systemName: "mail")
        }
        // возвращаем наш контент в свойство contentconfiguration
        cell.contentConfiguration = content
        return cell
    }
    
    // снимаем выделение с ячейки
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

}
