
import Foundation

private let Функции = """

private func addNumbers(argument parameter: Int){ }

  - если код в одну строку можно не ставить return

  - let result = addNumbers() вызывает функцию
    let result = addNumbers  создает копию

  при вызове:
  параметр - внутренний  - используется внутри функции
  аргумент - внешний     -  для связки
  _ n :  пустой

  Вариативные параметры -  должен быть один параметр (_ numbers: Double...)

  - Функция с возможностью ошибок
 func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent" }

  - Обработка ошибок:  do try catch или try?

     



"""
