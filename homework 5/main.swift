import Foundation
//№1. Через readLine вводится любое количество слов. После чего эти слова сортируются по количеству символов. Далее отображается самое короткое слово(если несколько с таким количеством - отобразить все) и так же самое длинное
var word = [String]()
var stop = false
while stop == false{
    let readline = readLine()!
    if readline.count == 0{
        stop = true
    }else{
        word.append(readline)
    }
}
//print(word)
word.sort{$0.count < $1.count}
dump(word)
word.min()
word.max()

//№2. Составить список из 20 контактов (Имя - номер телефона). Отсортировать по алфавиту (А-Я) и отобразить на какую букву сколько контактов сохранено
var contacts = ["Аня - 0506765432", "Бека - 0765876456", "Юля - 0654876345", "Юна - 0967854213", "Яна - 0456876321", "Адик - 0987543123", "Нурс - 0654456789", "Бек - 0123564789", "Сара - 0987654321", "Каныкей - 0123456789", "Аяна - 0435678932", "Кубаныч - 0987456789", "Жан - 0123321123", "Пери - 0987789879", "Куба - 0454345543", "Ким - 0565565565", "Асыл - 0343343343", "Ина - 0656565656", "Исхак - 0765567876", "Нура - 0240320001"]
contacts.sort()
dump(contacts)
let filterContacts = contacts.filter{ contacts in contacts.first == "С"
}
print(filterContacts)

//№3. Составить мини-игру “Викторина” используя массивы для записи вопросов и ответов. В игре должно быть 5 раундов по 3 вопроса. Так же должны быть несгораемые суммы. Так же в конце если человек проиграл - показать какой ответ был верным и отобразить выигрыш и сколько раундов было выиграно
var name = "Викторина"
print(name)
var question1: [String] = ["1) Какое животное находится под защитой закона в Риме?", "2) Какое млекопитающее известно самым мощным укусом в мире", "3) Какая птица ассоциируется у вас с миром"]
var answer1: [String] = ["Кошки", "Бегемот", "Голубь"]
var question2: [String] = ["1) Какая птица является единственной, которая может летать задом наперед?", "2) Какое популярное морское существо обладает способностью клонировать себя?", "3) Какое самое быстрое сухопутное животное?"]
var answer2: [String] = ["Колибри", "Медуза", "Гепард"]
var question3: [String] = ["1) Как называется самка оленя?", "2) В каком животном можно найти жемчуг?", "3) Сколько костей у акул?"]
var answer3: [String] = ["Лань", "Устрицы", "Ноль"]
var question4: [String] = ["1) Какой автор написал книги “Игра престолов?", "2) Как зовут домашнюю обезьянку Росса в сериале “Друзья”?", "3) Какая актриса была голосом за кадром в фильме “Сплетница”?"]
var answer4: [String] = ["Джордж Р. Р. Мартин", "Марсель", "Кристен Белл"]
var question5: [String] = ["1) Какова основная профессия Теда Мосби, главного героя фильма “Как я встретил вашу маму”?", "2) Оливия Бенсон - главная героиня какой франшизы “Закон и порядок”?", "3) Кто из участников “Теории большого взрыва” имеет настоящую докторскую степень?"]
var answer5: [String] = ["Архитектор", "Закон и порядок: Специальный корпус", "Маим Биалик"]
var score = 0
var round = 0
var name1 = "   ПЕРВЫЙ РАУНД   "
print(name1)
print("Первый вопрос \n\(question1[0])")
var ans1 = readLine()
if ans1 == answer1[0]{
    print("У вас 1 очко")
    score += 1
}else {
    print("Правильный ответ \n\(answer1[0])")
    print("Вы не получили очко")
}
print("Второй вопрос \n\(question1[1])")
var ans2 = readLine()
if ans2 == answer1[1]{
    print("У вас 1 очко")
    score += 1
}else {
    print("Правильный ответ \n\(answer1[1])")
    print("Вы не получили очко")
}
print("Третий вопрос \n\(question1[2])")
var ans3 = readLine()
if ans3 == answer1[2]{
    print("У вас 1 очко")
    score += 1
}else {
    print("Правильный ответ \n\(answer1[2])")
    print("Вы не получили очко")
}
if ans1 == answer1[0], ans2 == answer1[1], ans3 == answer1[2]{
    round += 1
}
var name2 = "   ВТОРОЙ РАУНД   "
print(name2)
print("Первый вопрос \n\(question2[0])")
var ans4 = readLine()
if ans4 == answer2[0]{
    print("У вас 1 очко")
    score += 1
}else {
    print("Правильный ответ \n\(answer2[0])")
    print("Вы не получили очко")
}
print("Второй вопрос \n\(question2[1])")
var ans5 = readLine()
if ans5 == answer2[1]{
    print("У вас 1 очко")
    score += 1
}else {
    print("Правильный ответ \n\(answer2[1])")
    print("Вы не получили очко")
}
print("Третий вопрос \n\(question2[2])")
var ans6 = readLine()
if ans6 == answer2[2]{
    print("У вас 1 очко")
    score += 1
}else {
    print("Правильный ответ \n\(answer2[2])")
    print("Вы не получили очко")
}
if ans4 == answer2[0], ans5 == answer2[1], ans6 == answer2[2]{
    round += 1
}
var name3 = "   ТРЕТИЙ РАУНД   "
print(name3)
print("Первый вопрос \n\(question3[0])")
var ans7 = readLine()
if ans7 == answer3[0]{
    print("У вас 1 очко")
    score += 1
}else {
    print("Правильный ответ \n\(answer3[0])")
    print("Вы не получили очко")
}
print("Второй вопрос \n\(question3[1])")
var ans8 = readLine()
if ans8 == answer3[1]{
    print("У вас 1 очко")
    score += 1
}else {
    print("Правильный ответ \n\(answer3[1])")
    print("Вы не получили очко")
}
print("Третий вопрос \n\(question3[2])")
var ans9 = readLine()
if ans9 == answer3[2]{
    print("У вас 1 очко")
    score += 1
}else {
    print("Правильный ответ \n\(answer3[2])")
    print("Вы не получили очко")
}
if ans7 == answer3[0], ans8 == answer3[1], ans9 == answer3[2]{
    round += 1
}
var name4 = "   ЧЕТВЕРТЫЙ РАУНД   "
print(name4)
print("Первый вопрос \n\(question4[0])")
var ans10 = readLine()
if ans10 == answer4[0]{
    print("У вас 1 очко")
    score += 1
}else {
    print("Правильный ответ \n\(answer4[0])")
    print("Вы не получили очко")
}
print("Второй вопрос \n\(question4[1])")
var ans11 = readLine()
if ans11 == answer4[1]{
    print("У вас 1 очко")
    score += 1
}else {
    print("Правильный ответ \n\(answer4[1])")
    print("Вы не получили очко")
}
print("Третий вопрос \n\(question4[2])")
var ans12 = readLine()
if ans12 == answer4[2]{
    print("У вас 1 очко")
    score += 1
}else {
    print("Правильный ответ \n\(answer4[2])")
    print("Вы не получили очко")
}
if ans10 == answer4[0], ans11 == answer4[1], ans12 == answer4[2]{
    round += 1
}
var name5 = "   ПЯТЫЙ РАУНД   "
print(name5)
print("Первый вопрос \n\(question5[0])")
var ans13 = readLine()
if ans13 == answer5[0]{
    print("У вас 1 очко")
    score += 1
}else {
    print("Правильный ответ \n\(answer5[0])")
    print("Вы не получили очко")
}
print("Второй вопрос \n\(question5[1])")
var ans14 = readLine()
if ans14 == answer5[1]{
    print("У вас 1 очко")
    score += 1
}else {
    print("Правильный ответ \n\(answer5[1])")
    print("Вы не получили очко")
}
print("Третий вопрос \n\(question5[2])")
var ans15 = readLine()
if ans15 == answer5[2]{
    print("У вас 1 очко")
    score += 1
}else {
    print("Правильный ответ \n\(answer5[2])")
    print("Вы не получили очко")
}
if ans13 == answer5[0], ans14 == answer5[1], ans15 == answer5[2]{
    round += 1
}
print("Вы ответили на -> \(score) вопрос и выигрыли - \(score) очко")
print("Вы выигрыли \(round) раунд")
