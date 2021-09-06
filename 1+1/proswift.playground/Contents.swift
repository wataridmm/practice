let bowlingscore = (5,3)

switch bowlingscore{
    case let(a,b):
    if (a+b) >= 10 {
    print("1投目は\(a)本、2投目は\(b)本")
    } else {
    print("スコアに誤りがあります")
    }
}