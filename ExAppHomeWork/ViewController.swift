import UIKit

class ViewController: UIViewController {
    private let helper = Helper()
    private let userRepository = UserRepository()
    private let textLabel = UILabel()
    private let buttonUIOne = ButtonUI(setTitle: "Show New User", colorButton: .red, shadowButton: false)
    private let buttonUITwo = ButtonUI(setTitle: "Hide User", colorButton: .green, shadowButton: true)
    private let stackView = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let users = userRepository.returnArrayOfUsers()
        view.backgroundColor = UIColor(ciColor: .gray)
        helper.addFewHumans(user: users)
        
        setupLabel()
        setupStackView()
        view.addSubview(stackView)
        setupLayout()
        
        for users in helper.getListOfHumans() {
            print(users.personalInformationOfUser.firstNameSecondName)
        }
    }
    
    private func setupLabel() {
        let randomUserName = helper.getListOfHumans()
        textLabel.text = randomUserName.randomElement()?.personalInformationOfUser.firstNameSecondName
        textLabel.font = .systemFont(ofSize: 25)
        textLabel.textColor = .green
        textLabel.textAlignment = .center
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 5
        
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(buttonUIOne)
        stackView.addArrangedSubview(buttonUITwo)
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        buttonUIOne.translatesAutoresizingMaskIntoConstraints = false
        buttonUITwo.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant:  200),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 200),
            stackView.heightAnchor.constraint(equalToConstant: 250)
        ])
    }
}

