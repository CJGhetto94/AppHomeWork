
import UIKit

class ButtonUI: UIButton {
    
    init(setTitle: String, colorButton: UIColor, shadowButton: Bool) {
        super.init(frame: .zero)
        setupButton(setTitle, colorButton, shadowButton)
        setupLayout()
    }
    
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupButton(_ setTitleButton: String,_ colorButton: UIColor ,_ shadowButton: Bool) {
        let shadowButtonBool = shadowButton
        
        setTitle(setTitleButton, for: .normal)
        tintColor = colorButton
        
        
        if shadowButtonBool {
            layer.cornerRadius = 20
            layer.shadowColor = UIColor.red.cgColor
            layer.shadowOpacity = 0.7
            layer.shadowOffset = CGSize(width: 5, height: 5)
            layer.shadowRadius = 10
        }
    }
    
    private func setupLayout() {
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: topAnchor),
            bottomAnchor.constraint(equalTo: bottomAnchor),
            leadingAnchor.constraint(equalTo: leadingAnchor),
            trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
