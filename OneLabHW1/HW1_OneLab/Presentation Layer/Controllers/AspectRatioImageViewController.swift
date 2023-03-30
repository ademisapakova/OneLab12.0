//
//  AspectRatioImageViewController.swift
//  HW1_OneLab
//
//  Created by Адема Сапакова on 29.03.2023.
//

import UIKit

final class AspectRatioImageViewController: UIViewController {

    private lazy var topView : UIView = {
        let myView = UIView()
        myView.backgroundColor = .systemGray5
        
        return myView
    }()
    private lazy var leadingView : UIView = {
        let myView = UIView()
        myView.backgroundColor = .systemGray5
        
        return myView
    }()
    
    private lazy var myImageView : UIImageView = {
       let myImage = UIImageView()
       myImage.image = UIImage(named: "photo")
       
       return myImage
    }()
    private lazy var bottomView : UIView = {
        let myView = UIView()
        myView.backgroundColor = .systemGray5
        
        return myView
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
        view.addSubview(topView)
        view.addSubview(leadingView)
        view.addSubview(myImageView)
        view.addSubview(bottomView)
    }
    func setupConstraints() {
        topView.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(50)
            make.leading.equalToSuperview().offset(15)
            make.width.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.2)
        }
        leadingView.snp.makeConstraints{ make in
            make.leading.equalToSuperview().offset(15)
            make.top.equalTo(topView.snp.bottom).offset(10)
            make.width.equalToSuperview().multipliedBy(0.4)
            make.height.equalToSuperview().multipliedBy(0.36)
        }
        myImageView.snp.makeConstraints{ make in
            make.leading.equalTo(leadingView.snp.trailing).offset(10)
            make.top.equalTo(topView.snp.bottom).offset(10)
            make.height.equalToSuperview().multipliedBy(0.36)
        }
        bottomView.snp.makeConstraints{ make in
            make.top.equalTo(myImageView.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(15)
            make.width.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.2)
        }
    }
}

