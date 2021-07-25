//
//  Meal.swift
//  TableView3
//
//  Created by Nikita Petrenkov on 25.07.2021.
//

import Foundation

// Структура данных блюда
struct Meal {
    /// Название блюда
    let title: String
    /// Описание?
    let description: String?
}

/// Список данных (блюд) для отображения
var meals: [Meal] = [
    Meal(title: "Окрошка", description: "Первое блюдо"),
    Meal(title: "Салат", description: "Салаты"),
    Meal(title: "Борщ", description: "Первое блюдо"),
    Meal(title: "Соль", description: "Специи"),
    Meal(title: "Сахар", description: "Специи"),
    Meal(title: "Чай", description: "Напитки"),
    Meal(title: "Сок", description: "Напитки"),
    Meal(title: "Куриный шашлык", description: "Второе блюдо")
]
