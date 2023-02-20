//
//  OrderViewController.swift
//  KP
//
//  Created by Бакдаулет Дуйсенбеков on 01.02.2023.
//

//import UIKit
//
//class OrderViewController: UIViewController {
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        setupViews()
//        setupConstraints()
//    }
//    func setupViews(){
//
//    }
//    func setupConstraints(){
//
//    }
//}

import UIKit
import SnapKit

class OrderViewController: UIViewController {
    
    // MARK: - Properties
    
    private let bookTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Book Title:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let bookTitleTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Book Title"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    @objc private let orderButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Order", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
       
        return button
    }()
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
      
    }
    
    // MARK: - Private Methods
    
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(bookTitleLabel)
        view.addSubview(bookTitleTextField)
        view.addSubview(orderButton)
        
        NSLayoutConstraint.activate([
            bookTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            bookTitleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            bookTitleTextField.topAnchor.constraint(equalTo: bookTitleLabel.bottomAnchor, constant: 8),
            bookTitleTextField.leadingAnchor.constraint(equalTo: bookTitleLabel.leadingAnchor),
            bookTitleTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            orderButton.topAnchor.constraint(equalTo: bookTitleTextField.bottomAnchor, constant: 16),
            orderButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
   
    }
