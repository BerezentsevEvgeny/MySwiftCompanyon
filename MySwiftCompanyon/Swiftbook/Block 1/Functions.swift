//
//  Functions.swift


// func example(a: Int, b: Int) parameters - используется внутри функции

// func example(a: Int, and b: Int) parameters + аргумент "and", служит для связки,используется для связки и на код не влияет

// func example(_ a: Int, _ b: Int) пустые аргументы

// MARK: - Вариативный параметр func example(_ numbers: Double...) содержит некоторое количество элементов и в функции используется
//  как массив. Такой параметр может быть только один.По сути аналог передачи массива

// MARK: Концепция раннего возврата (выход из функции с помощью return исходя из условия)
// if condition {
//    do something   -  возможно и без этой строки
//    return
// }

// MARK: - Сквозные параметры - после работы функции сохраняют изммененные значения переданых  в параметры переменных
// func changeValues(_ a: inout Int, _ b: inout: Int) -> Void {
//   let temp = a
//   a = b
//   b = temp }
//
// var x = 150, y = 45
// changeValues(&x, &y)
// x // 45  y // 150

// MARK: - Рекурсивный вызов функции
// func countdown(firstNum num: Int) -> Void {
//   print(num)
//   if num > 0 {
//        рекурсивный вызов функции
//        countdown(firsNum: num - 1)
//    }
// }



// value = max(x: Comparable,y: Comparable) -  возвращает большее их двух элементов

