//
//  ViewController.swift
//  Destini
//
//  Created by Sergey on 01.02.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    //MARK: - Variables
    
    var buttons = ButtonsProperty()
    var labels = LabelProperty()
    
    //MARK: - UIButtons
    
    lazy var firstButton: UIButton = {
        let button: UIButton = UIButton(frame: buttons.buttonFrame)
        button.setBackgroundImage(buttons.firstButtonBackgroundImage, for: .normal)
        button.setTitle("Choice one", for: .normal)
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = buttons.buttonFont
        button.addTarget(self, action: #selector(getAnswerForButtons), for: .touchUpInside)
        
        return button
    }()
    
    lazy var secondButton: UIButton = {
        let button = UIButton(frame: buttons.buttonFrame)
        button.setBackgroundImage(buttons.secondButtonBackgroundImage, for: .normal)
        button.setTitle("Choice two", for: .normal)
        button.titleLabel?.font = buttons.buttonFont
        button.titleLabel?.textColor = .white
        button.addTarget(self, action: #selector(getAnswerForButtons), for: .touchUpInside)
        return button
    }()
    
    //MARK: - Labels
    
    lazy var questionLabel: UILabel = {
        let label = UILabel(frame: labels.labelFrame)
        label.font = labels.labelFont
        label.textColor = labels.labelTextColor
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.text = "Question text."
        return label
    }()
    
    //MARK: - UIView and UIStackView
    
    lazy var verticalStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10.0
        stack.alignment = .fill
        stack.contentMode = .scaleToFill
        stack.distribution = .fillProportionally
        [   questionLabel,
            firstButton,
            secondButton].forEach {
            stack.addArrangedSubview($0)
        }
        
        return stack
    }()
    
    lazy var backgroundImageView: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "background"))
        return image
    }()
    
    //MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    //MARK: - Set constraints

    func setupUI() {
        view.addSubview(backgroundImageView)
        view.addSubview(verticalStackView)
        
        
        
    }
    
    //MARK: - Methods
    
    @objc func getAnswerForButtons(_ sender: UIButton) {
        
    }
    
}

