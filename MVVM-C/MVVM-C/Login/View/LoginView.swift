//
//  LoginView.swift
//  MVVM-C
//
//  Created by Luan Arruda on 22/04/24.
//

import UIKit

protocol LoginViewDelegate: AnyObject {
    func loginAction()
    func registerAction()
}

class LoginView: UIView {
    
    //MARK: Delegate
    
    private var delegate: LoginViewDelegate?
    
    public func setDelegate(delegate: LoginViewDelegate) {
        self.delegate = delegate
    }
    
    //MARK: - Properts
    
    lazy var emailLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "E-mail"
        lb.font = .systemFont(ofSize: 18)
        lb.textColor = .black
        return lb
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.keyboardType = .emailAddress
        tf.backgroundColor = .white
        tf.textColor = .black
        tf.setLeftPaddingPoints(15)
        tf.layer.cornerRadius = 8
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 1
        return tf
    }()
    
    lazy var passwordLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "Senha"
        lb.font = .systemFont(ofSize: 18)
        lb.textColor = .black
        return lb
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.keyboardType = .default
        tf.isSecureTextEntry = true
        tf.backgroundColor = .white
        tf.textColor = .black
        tf.setLeftPaddingPoints(15)
        tf.layer.cornerRadius = 8
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 1
        return tf
    }()
    
    lazy var loginButton: UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setTitle("Entrar", for: .normal)
        bt.layer.cornerRadius = 10
        bt.backgroundColor = .gray
        bt.tintColor = .white
        bt.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return bt
    }()
    
    lazy var registerButton: UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setTitle("Registrar", for: .normal)
        bt.layer.cornerRadius = 10
        bt.backgroundColor = .gray
        bt.tintColor = .white
        bt.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside)
        return bt
    }()
    
    //MARK: - Actions
    
    @objc private func tappedLoginButton() {
        self.delegate?.loginAction()
    }
    
    @objc private func tappedRegisterButton() {
        self.delegate?.registerAction()
    }
    
    //MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemGray4
        self.configSuperView()
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configSuperView() {
        self.addSubview(self.emailLabel)
        self.addSubview(self.emailTextField)
        self.addSubview(self.passwordLabel)
        self.addSubview(self.passwordTextField)
        self.addSubview(self.loginButton)
        self.addSubview(self.registerButton)
    }
    
    //MARK: - Constraints
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            self.emailLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 24),
            self.emailLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 44),
            self.emailLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -44),
            
            self.emailTextField.topAnchor.constraint(equalTo: self.emailLabel.bottomAnchor, constant: 12),
            self.emailTextField.leadingAnchor.constraint(equalTo: self.emailLabel.leadingAnchor),
            self.emailTextField.trailingAnchor.constraint(equalTo: self.emailLabel.trailingAnchor),
            self.emailTextField.heightAnchor.constraint(equalToConstant: 36),
            
            self.passwordLabel.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 6),
            self.passwordLabel.leadingAnchor.constraint(equalTo: self.emailLabel.leadingAnchor),
            self.passwordLabel.trailingAnchor.constraint(equalTo: self.emailLabel.trailingAnchor),
            
            self.passwordTextField.topAnchor.constraint(equalTo: self.passwordLabel.bottomAnchor, constant: 6),
            self.passwordTextField.leadingAnchor.constraint(equalTo: self.emailLabel.leadingAnchor),
            self.passwordTextField.trailingAnchor.constraint(equalTo: self.emailLabel.trailingAnchor),
            self.passwordTextField.heightAnchor.constraint(equalTo: self.emailTextField.heightAnchor),
            
            self.loginButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 36),
            self.loginButton.leadingAnchor.constraint(equalTo: self.emailLabel.leadingAnchor),
            self.loginButton.trailingAnchor.constraint(equalTo: self.emailLabel.trailingAnchor),
            self.loginButton.heightAnchor.constraint(equalTo: self.emailTextField.heightAnchor),
            
            self.registerButton.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: 12),
            self.registerButton.leadingAnchor.constraint(equalTo: self.emailLabel.leadingAnchor),
            self.registerButton.trailingAnchor.constraint(equalTo: self.emailLabel.trailingAnchor),
            self.registerButton.heightAnchor.constraint(equalTo: self.emailTextField.heightAnchor),
            
            
        ])
    }
}
