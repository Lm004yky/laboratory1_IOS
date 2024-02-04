// Ykylas Nurkhan
//TASK 1
import Foundation

func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func divide(_ a: Double, _ b: Double) -> Double? {
    guard b != 0 else {
        print("Ошибка: Деление на ноль.")
        return nil
    }
    return a / b
}

func power(_ base: Double, _ exponent: Double) -> Double {
    return pow(base, exponent)
}

func getNumberInput() -> Double? {
    print("Введите число:")
    if let input = readLine(), let number = Double(input) {
        return number
    } else {
        print("Ошибка: Введено некорректное число.")
        return nil
    }
}

func getOperatorInput() -> String? {
    print("Введите оператор (+, -, *, /, ^) или 'q' для выхода:")
    if let input = readLine(), ["+", "-", "*", "/", "^", "q"].contains(input) {
        return input
    } else {
        print("Ошибка: Введен некорректный оператор.")
        return nil
    }
}

while true {
    if let num1 = getNumberInput(), let operatorInput = getOperatorInput() {
        if operatorInput == "q" {
            print("Выход из программы.")
            break
        }
        
        if let num2 = getNumberInput() {
            var result: Double?
            
            switch operatorInput {
            case "+":
                result = add(num1, num2)
            case "-":
                result = subtract(num1, num2)
            case "*":
                result = multiply(num1, num2)
            case "/":
                result = divide(num1, num2)
            case "^":
                result = power(num1, num2)
            default:
                print("Ошибка: Некорректный оператор.")
            }
            
            if let result = result {
                print("Результат: \(result)")
            }
        }
    }
}

//TASK 2
import Foundation

func combineStrings() {
    print("Введите первую строку:")
    let firstLine = readLine() ?? ""

    print("Введите вторую строку:")
    let secondLine = readLine() ?? ""

    let combinedString = firstLine + secondLine
    print("Результат объединения: \(combinedString)")
}

func flipString() {
    print("Введите строку для переворота:")
    if let inputString = readLine() {
        let flippedString = String(inputString.reversed())
        print("Результат переворота: \(flippedString)")
    }
}

func countCharacters() {
    print("Введите строку для подсчета символов:")
    if let inputString = readLine() {
        let characterCount = inputString.filter { !$0.isWhitespace }.count
        print("Количество символов (без пробелов): \(characterCount)")
    }
}

func searchForSubstring() {
    print("Введите строку:")
    if let mainString = readLine() {
        print("Введите подстроку для поиска:")
        if let substring = readLine() {
            if let range = mainString.range(of: substring) {
                let index = mainString.distance(from: mainString.startIndex, to: range.lowerBound)
                print("Первое вхождение подстроки \"\(substring)\" на позиции: \(index + 1)")
            } else {
                print("Подстрока не найдена.")
            }
        }
    }
}

while true {
    print("Выберите опцию:")
    print("1. Объединить строки")
    print("2. Перевернуть строку")
    print("3. Посчитать символы")
    print("4. Поиск подстроки")
    print("5. Выход")

    if let choice = readLine(), let option = Int(choice) {
        switch option {
        case 1:
            combineStrings()
        case 2:
            flipString()
        case 3:
            countCharacters()
        case 4:
            searchForSubstring()
        case 5:
            print("Выход из программы.")
            exit(0)
        default:
            print("Неверная опция.")
        }
    } else {
        print("Неверный ввод.")
    }
}
