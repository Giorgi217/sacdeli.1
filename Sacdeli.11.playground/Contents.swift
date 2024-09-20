import UIKit

// TASK 1
//შექმენით ფუნქცია სახელად `greet`, რომელიც იღებს String ტიპის პარამეტრს `name` და ბეჭდავს მისალმებას. მაგალითად, თუ გადავცემთ "გიორგი", უნდა დაიბეჭდოს "გამარჯობა, გიორგი!".


func greet(name: String) {
    print("გამარჯობა, \(name)!")
}
greet(name: "პეტრე")

//// TASK 2
////2. დაწერეთ ფუნქცია printMultiplicationTable, რომელიც იღებს ერთ Int ტიპის პარამეტრს number და ბეჭდავს ამ რიცხვის გამრავლების ტაბულას 1-დან 10-მდე. მაგალითად, თუ გადავცემთ 5-ს, ფუნქციამ უნდა დაბეჭდოს:
//5 x 1 = 5
//5 x 2 = 10
//5 x 3 = 15
//...
//5 x 10 = 50
//გამოიძახეთ ეს ფუნქცია რამდენიმე სხვადასხვა რიცხვისთვის.



func printMultiplicationTable(_ number: Int){
print("""
1 x \(number) = \(number * 1)
2 x \(number) = \(number * 2)
3 x \(number) = \(number * 3)
4 x \(number) = \(number * 4)
5 x \(number) = \(number * 5)
6 x \(number) = \(number * 6)
7 x \(number) = \(number * 7)
8 x \(number) = \(number * 8)
9 x \(number) = \(number * 9)
10 x \(number) = \(number * 10)

""")
}
printMultiplicationTable(3)
printMultiplicationTable(4)
printMultiplicationTable(5)



//3. შექმენით ფუნქცია `isEven`, რომელიც იღებს Int ტიპის პარამეტრს და აბრუნებს Bool-ს - true თუ რიცხვი ლუწია, false თუ კენტი. გამოიყენეთ ეს ფუნქცია რამდენიმე რიცხვის შესამოწმებლად და დაბეჭდეთ შედეგები.

func isEven(_ number: Int) -> Bool {
     number % 2 == 0
}
print(isEven(3))
print(isEven(4))
print(isEven(5))
print(isEven(6))


////4. დაწერეთ ფუნქცია `repeatString`, რომელსაც აქვს ორი პარამეტრი: String ტიპის `text` და Int ტიპის `count`. ფუნქციამ უნდა დააბრუნოს ახალი სტრინგი, სადაც `text` გამეორებულია `count`-ჯერ. მაგალითად, `repeatString("ჰა", 3)` უნდა დააბრუნოს "ჰაჰაჰა".

func repeatString(text: String, count: Int) -> String {
    var result = ""
    for reesult in 0...(count - 1) {
        result += text
    }
    return result
}
print(repeatString(text: "IOS", count: 3))

////5. შექმენით ფუნქცია `calculateTax`, რომელსაც აქვს ორი პარამეტრი: Double ტიპის `price` და Double ტიპის `taxRate` (პროცენტებში). ფუნქციამ უნდა დააბრუნოს გადასახადის თანხა. გამოიძახეთ ეს ფუნქცია სხვადასხვა ფასისთვის და დაბეჭდეთ შედეგები.


func calculateTax(price: Double, taxRate: Double) -> Double {
    var calculation = price * taxRate / 100
    return calculation
}
print(calculateTax(price: 200, taxRate: 75))

// 6. დაწერეთ ფუნქცია `printNumbers`, რომელსაც აქვს ვარიადული Int ტიპის პარამეტრი `numbers`. ფუნქციამ უნდა დაბეჭდოს ყველა გადაცემული რიცხვი. გამოიძახეთ ეს ფუნქცია სხვადასხვა რაოდენობის არგუმენტებით.

func printNumbers(_ numbers: Int...) {
    numbers.forEach { print($0)}
}

printNumbers(10, 20, 15)

////7. ფუნქციის გარეთ შექმენით მუდმივა ‘pi’ და მიანიჭეთ შესაბამისი მნიშვნელობა. შექმენით ფუნქცია ‘calculateCircleArea’ რომელსაც აქვს Double ტიპის პარამეტრი `radius`. Pi-ს და radius-ის გამოყენებით დაბეჭდეთ წრის ფართობი.

let pi = 3.14159265359
func calculateCircleArea(radius: Double) {
    print(pow(radius, 2) * pi)
}
calculateCircleArea(radius: 10)

////8. შექმენით ფუნქცია printEvenNumbers, რომელიც იღებს ვარიადულ Int ტიპის პარამეტრს numbers. ფუნქციამ უნდა დაბეჭდოს მხოლოდ ლუწი რიცხვები გადმოცემული არგუმენტებიდან. გამოიძახეთ ეს ფუნქცია სხვადასხვა რაოდენობის არგუმენტებით და დაბეჭდეთ შედეგები.

func printEvenNumbers(numbers: Int...) {
    for number in numbers {
        if number % 2 == 0 {
            print(number)
        }
    }
    }

printEvenNumbers(numbers: 5, 7, 8, 10, 20)
