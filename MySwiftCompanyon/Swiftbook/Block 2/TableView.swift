//
//  TableView.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 31.03.2022.
//

// Табличное представление

// Протоколы UITableViewDataSource(обязательный) и UITableViewDelegate(для настройки и взаимодействия), требуют инициализации свойств dataSource = self и delegate = self (либо в сториборде перетянуть лучик к левому верхнему краю)

// indexPath это тип,который вычисляется автоматически в параметре внутри метода либо в tableView.indexPathForSelectedRow

// Переход на новый экран происходит по сегвею от ячейки, либо через метод didSelectRowAt: IndexPath + performSegue
