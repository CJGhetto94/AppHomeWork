
class Helper {
    private var listOfHumans = [User]()
    
    func addHuman(_ human: User) {
        listOfHumans.append(human)
    }
    
    func getListOfHumans() -> [User] {
        listOfHumans
    }
    
    func addFewHumans(user: [User]) {
        listOfHumans.append(contentsOf: user)
    }
}

