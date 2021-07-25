//: [Previous](@previous)

import Foundation

//Task 3 Соц. сеть для анонимных вопросов

var questions: [String : String ] = ["2020-08-09T18:31:42" : "How are u?" ,
                                     "2020-09-03T15:32:15" : "Hi, what`s up?" ,
                                     "2020-03-04T10:27:37" : "Are u dating with Joey?" ,
                                     "2021-05-06T9:41:44" : "Did u buy that car?" ,
                                     "2021-05-08T12:11:52" : "Would u like to drink some beer with me tonight?" ,
                                     "2021-03-01T6:39:12" : "Do u have a boyfriend?" ,]

var answers: [String : String ] = ["2020-08-09T18:31:42" : "Fine" ,
                                     "2020-09-03T15:32:15" : "Hi, nothing much" ,
                                     "2020-03-04T10:27:37" : "It`s none of your business" ,
                                     "2021-05-06T9:41:44" : "Not yet" ,
                                     "2021-05-08T12:11:52" : "Sure, baby" ,
                                     "2021-03-01T6:39:12" : "No, my heart is free" ,]

func searchQuestionsByDate(date: String) -> (String , String) {
    for keys in questions.keys {
        if keys.contains(date) {
            return (questions[keys], answers[keys]) as! (String, String)
        }
    }
    return ("505", "Error")
}

func showLastAnswers() {
    for keys in questions.keys {
        print(" Date: \(keys) \n Question: \(questions[keys] ?? " ") \n Answer: \(answers[keys] ?? " ")")
        print("-------------------------------")
    }
}
showLastAnswers()
print(" ")

let (question, answer) = searchQuestionsByDate(date: "2021-05-08T12:11:52")
print(" Question: \(question) \n Answer: \(answer)  ")
//: [Next](@next)
