import XCTest
@testable import SJDKitToolBox

final class SJDKitToolBoxTests: XCTestCase {
    func test1() {
        let sliptedString = "Lundi, Mardi, Mecredi, Jeudi, Vendredi, Samedi, Dimanche".splitString(with: ",")
        for elem in sliptedString {
            print(elem)
        }
        XCTAssertEqual(sliptedString.count, 7)
    }
    func test2() {
//        let string = "Lundi, Mardi, Mecredi, Jeudi, Vendredi, Samedi, Dimanche, ".splitString(with: ",")
//        XCTAssertEqual(string.count, 7)
//        XCTAssertTrue(string.isNotEmpty)
    }
    func test3() {
        let string = "Lun7di".clearWord
        let string2 = "Lun,di".clearWord
        let string3 = "Lun&di".clearWord
        let string4 = "Lun&()!§<<<>>>>/.?di".clearWord
        XCTAssertEqual(string, "Lundi")
        XCTAssertEqual(string2, "Lundi")
        XCTAssertEqual(string3, "Lundi")
        XCTAssertEqual(string4, "Lundi")
    }
    func tes3() {
        XCTAssertTrue("LUNDI7".containsAnumber)
        XCTAssertFalse("Lundi".containsAnumber)
    }
}
