//
//  TwoEqualButtonViewController.swift
//  HW1_OneLab
//
//  Created by Адема Сапакова on 29.03.2023.
//

import UIKit

final class TwoEqualButtonsViewController: UIViewController {
    private lazy var shortButton : UIButton = {
       let myButton = UIButton()
       myButton.backgroundColor = .gray
       myButton.setTitle("Short", for: .normal)
       myButton.setTitleColor(.blue, for: .normal)
       myButton.titleLabel?.font = .systemFont(ofSize: 15)
        
       return myButton
        
    }()
    private lazy var MuchLongerButton : UIButton = {
       let myButton = UIButton()
       myButton.backgroundColor = .gray
       myButton.setTitle("Much Longer Button Title", for: .normal)
       myButton.setTitleColor(.blue, for: .normal)
       myButton.titleLabel?.font = .systemFont(ofSize: 15)
        
       return myButton
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
        view.addSubview(shortButton)
        view.addSubview(MuchLongerButton)
    }
    func setupConstraints() {
        shortButton.snp.makeConstraints{ make in
            make.leading.equalToSuperview().offset(5)
            make.width.equalToSuperview().multipliedBy(0.48)
            make.height.equalToSuperview().multipliedBy(0.05)
            make.bottom.equalToSuperview().inset(50)
        }
        MuchLongerButton.snp.makeConstraints{ make in
            make.leading.equalTo(shortButton.snp.trailing).offset(10)
            make.trailing.equalToSuperview().inset(5)
            make.width.equalToSuperview().multipliedBy(0.48)
            make.height.equalToSuperview().multipliedBy(0.05)
            make.bottom.equalToSuperview().inset(50)
        }
    }
 }
