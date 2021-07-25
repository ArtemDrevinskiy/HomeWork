//: [Previous](@previous)

import Foundation

//Task 3 Соц. сеть для анонимных вопросов

/// Явно указывать тип не обязательно :)
/// Не ставим пробел перед `]`, перед `,` и перед `:`
var questions: [String : String ] = ["2020-08-09T18:31:42" : "How are u?" ,
                                     "2020-09-03T15:32:15" : "Hi, what`s up?" ,
                                     "2020-03-04T10:27:37" : "Are u dating with Joey?" ,
                                     "2021-05-06T9:41:44" : "Did u buy that car?" ,
                                     "2021-05-08T12:11:52" : "Would u like to drink some beer with me tonight?" ,
                                     "2021-03-01T6:39:12" : "Do u have a boyfriend?" ,]

/// Явно указывать тип не обязательно :)
/// Не ставим пробел перед `]`, перед `,` и перед `:`
var answers: [String : String ] = ["2020-08-09T18:31:42" : "Fine" ,
                                     "2020-09-03T15:32:15" : "Hi, nothing much" ,
                                     "2020-03-04T10:27:37" : "It`s none of your business" ,
                                     "2021-05-06T9:41:44" : "Not yet" ,
                                     "2021-05-08T12:11:52" : "Sure, baby" ,
                                     "2021-03-01T6:39:12" : "No, my heart is free" ,]

/// Не ставим пробел перед `,`
func searchQuestionsByDate(date: String) -> (String , String) {
    /// На каждой итерации берем 1 значение, поэтому скорее `for key in ...`
    for keys in questions.keys {
        /// Так как `key` это string, то можно просто
        /// сравнить их с другой датой-строкой при помощи `==`
        if keys.contains(date) {
            /// Здесь вместо force unwrap использовать значения по умолчанию,
            /// например пустая строка, если вдруг вопрос или ответ потерялся
            return (questions[keys], answers[keys]) as! (String, String)
        }
    }
    return ("505", "Error")
}

func showLastAnswers() {
    /// На каждой итерации берем 1 значение, поэтому скорее `for key in ...`
    for keys in questions.keys {
        print(" Date: \(keys) \n Question: \(questions[keys] ?? " ") \n Answer: \(answers[keys] ?? " ")")
        print("-------------------------------")
    }
}
showLastAnswers()
print(" ")

/// Решил в лоб, но немног странно потом видеть в консоли следующее:
/// Question: 505
/// Answer: Error
///
/// :)

let (question, answer) = searchQuestionsByDate(date: "2021-05-08T12:11:52")
print(" Question: \(question) \n Answer: \(answer)  ")

/// В идеале бы сделать следующее:
/// Вызвать 1 метод, где будешь вызывать `searchQuestionsByDate(date:)`
/// В нем проверять свой status code.
/// Если он начинается с 5 - то ошибка, пишем об ошибке
/// Иначе - пишем уже пару вопрос-ответ

/// Но, учитывая что задание было скорее в реализации функции `showLastAnswers()`,
/// то можно не править, засчитано


//: [Next](@next)
