//1) Создать 2 опциональных  переменных  типа Int number1 и number2. Создать 3 ридлайн. 1 для ввода первого числа, 2 для ввода операции, 3 для ввода второго числа. Составить калькулятор с 4 операциями: +, -, /, *. Сделать так чтобы значение ридлайнов присваивалось переменным number1 и number2 используя 3 способа. 1) Используя оператор "??" сделать так чтобы если неправильно введены данные, то присваивать вместо nil число 0. 2) Используя проверку на nil, выводить сообщение неправильно введены данные, при неправильном вводе. 3) Используя if let и guard посчитать числа, если неправильно введены данные, то ничего не делать.

var number1: Int?
var number2: Int?

print("Введите первое число")
let firstNum = Int(readLine()!)
print ("Выберите операцию: +, -, *, /")
let operation = readLine()!
print("Введите второе число")
let secondNum = Int(readLine()!)

//1) Используя оператор "??" сделать так чтобы если неправильно введены данные, то присваивать вместо nil число

func calculator1(a: Int, b: Int, operation: String){
    switch operation{
    case "+":
        print(a+b)
    case "-":
        print(a-b)
    case "*":
        print(a*b)
    case "/":
        print(a/b)
    default:
        ()
    }
}
number1 = firstNum
number2 = secondNum
calculator1(a: number1 ?? 0, b: number2 ?? 0, operation: operation)

//2) Используя проверку на nil, выводить сообщение неправильно введены данные, при неправильном вводе.

func calculator2(a: Int, b: Int, operation: String){
    switch operation{
    case "+":
        print(a+b)
    case "-":
        print(a-b)
    case "*":
        print(a*b)
    case "/":
        print(a/b)
    default:
        ()
    }
}
if number1 == nil || number2 == nil{
    print("Неправильно введены данные")
}else{
    calculator2(a: number1!, b: number2!, operation: operation)
}


//3) Используя if let и guard посчитать числа, если неправильно введены данные, то ничего не делать.

func calculator3(a: Int, b: Int, operation: String){
    switch operation{
    case "+":
        print(a+b)
    case "-":
        print(a-b)
    case "*":
        print(a*b)
    case "/":
        print(a/b)
    default:
        ()
    }
}
if let number1 = number1, let number2 = number2{
    calculator3(a: number1, b: number2, operation: operation)
}


