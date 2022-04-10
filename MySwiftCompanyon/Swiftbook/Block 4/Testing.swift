//
//  Testing.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 08.04.2022.
//


// MARK: - Example One

//@testable import UnitTestingAppV2

//class DataModelTests: XCTestCase {
//
//    var sut: DataModel!
//
//    override func setUp() {
//        super.setUp()
//        sut = DataModel()
//    }
//
//    override func tearDown() {
//        sut = nil
//        super.tearDown()
//    }
//
//    func testLowersVolumeShouldBeZero()  {
//        // given (что дано)
//        sut.setVolume(to: -1)
//
//        // when (что произошло)
//        let volume = sut.volume
//
//        // then (что должно получиться)
//        XCTAssert(volume == 0, "Lowest value shold be epual 0")
//    }
//
//    func testHighestVolumeShouldBe100()  {
//        // given (что дано)
//        sut.setVolume(to: 101)
//
//        // when (что произошло)
//        let volume = sut.volume
//
//        // then (что должно получиться)
//        XCTAssert(volume == 100, "Highest value shold be epual 0")
//    }
//
//    func testNumberOneMustBeGreaterThenNumberTwo() {
//        let numberOne = 1
//        let numberTwo = 0
//
//        let isGreater = sut.greaterThanValue(x: numberOne, y: numberTwo)
//
//        XCTAssert(isGreater, "The number one must be greater than number two")
//    }
//
//    func testNumberOneNotBeGreaterThenNumberTwo() {
//        let numberOne = 1
//        let numberTwo = 1
//
//        let isGreater = sut.greaterThanValue(x: numberOne, y: numberTwo)
//
//        XCTAssert(!isGreater, "The number one must be greater than number two")
//    }
//
//}

// MARK: - Example 2

// @testable import ...

//class PersonTests: XCTestCase {
//    var person: Person?
//    var personWithFullName: Person?
//    var image: UIImage?
//    var imageData: Data?
//
//    override func setUp() {
//        super.setUp()
//        person = Person(name: "Foo", phone: "Bar")
//        personWithFullName = Person(name: "Foo", surname: "Bar", phone: "Baz")
//        image = UIImage(systemName: "person.crop.circle")
//        imageData = image?.pngData()
//
//    }
//
//    override func tearDown()  {
//        person = nil
//        personWithFullName = nil
//        image = nil
//        imageData = nil
//        super.tearDown()
//    }
//
//    func testInitPersonWithNameAndPhone() {
//
//        XCTAssertNotNil(person)
//    }
//
//    func testInitPersonWithFullNameAndPhone() {
//
//        XCTAssertNotNil(personWithFullName)
//    }
//
//    func testWhenGivenNameAndPhoneSetsNameAndPhone() {
//
//        XCTAssertEqual(person?.name, "Foo")
//        XCTAssertEqual(person?.phone, "Bar")
//    }
//
//    func testWhenGivenFullNameAndPhoneSetsFullNameAndPhone() {
//
//        XCTAssertTrue(personWithFullName?.surname == "Bar")
//    }
//
//    func testInitPersonWithDate() {
//        XCTAssertNotNil(person?.date)
//    }
//
//    func testInitPersonWithImage() {
//
//        let person = Person(name: "Foo", phone: "Bar", image: imageData)
//
//        XCTAssertNotNil(person.image)
//    }
//
//    func testInitPersonWithFullNameAndImage() {
//
//        let person = Person(name: "Foo", surname: "Bar", phone: "Baz", image: imageData)
//
//        XCTAssertNotNil(person.image)
//    }
//
//}


// MARK: - UI Testing

//import XCTest
//
//class ContactListAppUITests: XCTestCase {
//
//    override func setUp() {
//        super.setUp()
//        continueAfterFailure = false
//    }
//
//    override func tearDown() {
//
//        super.tearDown()
//    }
//
//    func testExample() {
//
//        let app = XCUIApplication()
//        app.launch()
//
//        app.navigationBars["ContactListApp.ContactListView"].buttons["Add"].tap()
//        app.textFields["Name"].tap()
//        app.textFields["Name"].typeText("Tim")
//
//        let surnameTextField = app.textFields["Surname"]
//        surnameTextField.tap()
//        app.textFields["Surname"].typeText("Cook")
//
//        let phoneTextField = app.textFields["Phone"]
//        phoneTextField.tap()
//        app.textFields["Phone"].typeText("333")
//
//        app.buttons["Save"].tap()
//
//        XCTAssertTrue(app.tables.staticTexts["Tim"].exists)
//    }
//
//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
//}
