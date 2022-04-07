//
//  UIElements.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 27.03.2022.
//


// Segmented control

// Label
// @IBOutlet label: UILabel! {
//   didSet {
//      действие при инициализации и изменении значения
//   }
// }

// Slider
//let value = lrintf(Float) округление


// Text field
// guard let inputText = textField.text, !inputText.isEmpty { else return )
// if let _ = Double(inputText) {
//            print("Wrong format"
// }
//
// Метод делегата для завершения редактирования view.endEditing(forced: true)

// Добавление тулбара над клавиатурой
// func textFieldDidBeginEditing(_ textField: UITextField)
//   let keyboardToolbar = UIToolbar()
//   textField.inputAccessoryView=keyboardToolbar
//   keyboardToolbar.sizeToFit()
//   let doneButton = UIBarButtonItem(title: "Done" style: done, target: self, action: #selector (didTapDone)
//   let flexBarButton = UIBarButtonItem(
//   barButtonSystemItem: .flexibleSpace,target: nil,action: nil
//   keyboardToolbar.items = [flexBarButton, doneButton]

// Скрытие клавиатуры
// override func touchesBegan(_touches: Set<UITouch>, with event: UIEvent?) {
// super. touchesBegan (touches, with: event)
// mainTextField.resignFirstResponder() }


// UIButton

// Новый способ обработки без target
//let button = UIButton()
//button.addAction(UIAction { _ in
//    print("")
//}, for: .touchUpInside)

// DateRicker

// dateFormatter.lacale = Locale.current
// dateFormatter.lacale = Locale(idenitfirer: "ru_Ru" ) Google: ios locale identifiers

// let formater = DateFormatter()
//formatter.dateStyle = .medium

// UIImageView

// Запрос и декодинг картинки из url
// do {
//    let imageData = try Data(contentsOf: URL) else { return }
//    DispatchQueue.main.async {
//       let image = UIImage(data: imageData)
//      {
// } catch let error {
//     handle error например поставить заглушку
//  }
//
// либо аналог в одну строку guard let imageData = try? Data(contentsOf: URL) else { return }

// Переход на глобальную очередь чтобы не ждать загрузки картинок при перерходе на следующий экран
// guard let url = URL(string: course.imageUrl ?? "") else ( return }
//       DispatchQueue.global().async {
//             guard let imageData = try? Data(contentsOf:url) else ( return }
//             DispatchQueue.main.async {
//                 self.courselmagt.image = UlImage(data: imageData)
//         }
//       }

// Navigation bar
//  let navBarAppearence=UINavigationBarAppearance()
//  navBarAppearence.configureWithOpaqueBackground()
//  navBarAppearence.titleTextAttributes=[.foregroundColor:UIColor.white]
//  navBarAppearence.largeTitleTextAttributes=[.foregroundColor:UIColor.white]
//  navBarAppearence.backgroundColor=UIColor(
//  red: 21/255,green: 101/255,blue: 192/255,alpha: 194/255)
//  navigationController?.navigationBar.standardAppearance=navBarAppearence
//  navigationController?.navigationBar.scrollEdgeAppearance=navBarAppearence
//  navigationController?.navigationBar?.tintcolor = .white
//  navigationItem.rightBarButtonItem=UIBarButtonItem(
//  barButtonSystemItem: add, target: self, action: #selector (addNewTask)
//
