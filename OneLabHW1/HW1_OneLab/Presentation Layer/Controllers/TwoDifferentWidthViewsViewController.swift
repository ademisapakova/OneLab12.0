//
//  TwoDifferentWidthViewsViewController.swift
//  HW1_OneLab
//
//  Created by Адема Сапакова on 29.03.2023.
//

import UIKit

final class TwoDifferentWidthViewsViewController: UIViewController {
    private lazy var smallView : UIView = {
        let myView = UIView()
        myView.backgroundColor = .purple
        
        return myView
    }()
    private lazy var biggerView : UIView = {
        let myView = UIView()
        myView.backgroundColor = .orange
        
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
        view.addSubview(smallView)
        view.addSubview(biggerView)
    }
    func setupConstraints() {
        smallView.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(50)
            make.leading.equalToSuperview().offset(15)
            make.width.equalToSuperview().multipliedBy(0.48)
            make.height.equalToSuperview().multipliedBy(0.7)
            
        }
        biggerView.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(50)
            make.leading.equalTo(smallView.snp.trailing).offset(5)
            make.width.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.7)
        }
    }
}
