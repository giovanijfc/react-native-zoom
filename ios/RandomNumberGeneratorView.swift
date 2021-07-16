import UIKit

class RandomNumberGeneratorView: UIView {
    
    var aleatoryNumber: Int = 0 {
        didSet {
            randomNumberLabel.text = String(describing: aleatoryNumber)
        }
    }
    
    var randomNumberLabel: UILabel!
    var randomNumberButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder mDecoder: NSCoder) {
        super.init(coder: mDecoder)
        setupView()
    }
    
    private func setupView() {
        randomNumberLabel = UILabel()
        randomNumberLabel.font = .systemFont(ofSize: 40)
        randomNumberLabel.translatesAutoresizingMaskIntoConstraints = false;
        randomNumberLabel.textAlignment = .right
        randomNumberLabel.text = "0"
        self.addSubview(randomNumberLabel)
        
        randomNumberButton = UIButton(type: .system)
        randomNumberButton.translatesAutoresizingMaskIntoConstraints = false;
        randomNumberButton.setTitle("GERAR NÚMERO ALEATORIO", for: .normal)
        randomNumberButton.addTarget(self, action: Selector(("getRandomNumberAction:")), for: .touchUpInside)
        self.addSubview(randomNumberButton)
        
        NSLayoutConstraint.activate([
            randomNumberLabel.topAnchor.constraint(equalTo: self.centerYAnchor),
            randomNumberLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            randomNumberButton.topAnchor.constraint(equalTo: randomNumberLabel.bottomAnchor, constant: 16),
            randomNumberButton.centerXAnchor.constraint(equalTo: randomNumberLabel.centerXAnchor)
        ])
    }
    
    @IBAction func getRandomNumberAction(_ sender: UIButton) {
        aleatoryNumber = Int.random(in:0...100)
    }
}


