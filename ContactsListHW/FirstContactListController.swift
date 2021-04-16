//
//  ContactsListViewController.swift
//  ContactsListHW
//
//  Created by Кирилл Нескоромный on 14.04.2021.
//

import UIKit

class FirstContactListController: UITableViewController {
    
    var contacts: [Contact]!

    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    // MARK: - Table view data source
    // указываем количество строк в секции
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    //описываем контент ячейки
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // создаем ячейку по идентификатору contact
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        
        // присваиваем переменной значение из массива по индексу строки row
        let contact = contacts[indexPath.row]
        
        // присваиваем переменной значение UIListContentConfiguration, чтобы получить доступ к свойствам для передачи данных из модели
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        
        // показываем на экране то, что настроили
        cell.contentConfiguration = content
        
        return cell
    }

    
    // MARK: - Navigation
    // проверку на идентификатор сегвея делать не надо, тк переход по ячейки идентичен переходу по кнопке - будет именно в тот контроллер, куда ведет сегвей
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailContactVC = segue.destination as! DetailContactInfoViewController
            detailContactVC.contact = contacts[indexPath.row]
        }
    }
    

}
