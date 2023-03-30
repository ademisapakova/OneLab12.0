//
//  DynamicHeightLabelAndTextFieldViewController.swift
//  HW1_OneLab
//
//  Created by Адема Сапакова on 29.03.2023.
//

import UIKit

final class DynamicHeightLabelAndTextFieldViewController: UIViewController {
   
    private lazy var nameLabel : UILabel = {
       let myLabel = UILabel()
       myLabel.text = "Name"
       myLabel.backgroundColor = .orange
        
       return myLabel
    }()
    private lazy var nameTextField : UITextField = {
      let textField = UITextField()
        textField.placeholder = "  Enter name"
        textField.layer.cornerRadius = 6
        textField.layer.borderWidth = 0.8
        
        return textField
    }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setupColors()
        setupViews()
        setupConstraints()
      
    }
    func setupColors(){
        view.backgroundColor = .white
    }
    func setupViews() {
        view.addSubview(nameLabel)
        view.addSubview(nameTextField)
       
    }
    func setupConstraints() {
        nameLabel.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(70)
            make.leading.equalToSuperview().offset(5)
            make.width.equalToSuperview().multipliedBy(0.2)
            make.height.equalToSuperview().multipliedBy(0.05)
        }
        nameTextField.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(70)
            make.leading.equalTo(nameLabel.snp.trailing).offset(5)
            make.height.equalToSuperview().multipliedBy(0.05)
            make.width.equalToSuperview().multipliedBy(0.78)
        }
        
    }

}
