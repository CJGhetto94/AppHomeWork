
struct Person {
    let firstName: String
    let secondName: String
    var firstNameSecondName: String {
        "\(firstName)  \(secondName)"
    }
}

struct User {
    let loginUser: String
    let passwordUser: Int
    let personalInformationOfUser: Person
}
