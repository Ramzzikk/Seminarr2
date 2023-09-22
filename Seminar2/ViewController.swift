//
//  ViewController.swift
//  Seminar2
//
//  Created by Рамазан Рахимов on 22.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    private func configureUI() {
        let ourView = UIView()
        ourView.backgroundColor = .blue
        view.addSubview(ourView)

        ourView.setWidth(250)
        ourView.setHeight(250)
        ourView.pinCenterX(to: view)
        ourView.pinTop(to: view.safeAreaLayoutGuide.topAnchor, 100)

        let leftView = UIView()
        leftView.backgroundColor = .darkGray
        view.addSubview(leftView)

        leftView.setWidth(50)
        leftView.setHeight(50)
        leftView.pinLeft(to: ourView.leadingAnchor)
        leftView.centerYAnchor.constraint(equalTo: ourView.centerYAnchor).isActive = true
        
        let rightView = UIView()
        rightView.backgroundColor = .darkGray
        view.addSubview(rightView)

        rightView.setWidth(50)
        rightView.setHeight(50)
        rightView.pinRight(to: ourView.trailingAnchor)
        rightView.centerYAnchor.constraint(equalTo: ourView.centerYAnchor).isActive = true
        
        let bottomView = UIView()
        bottomView.backgroundColor = .darkGray
        view.addSubview(bottomView)

        bottomView.setWidth(50)
        bottomView.setHeight(50)
        bottomView.pinBottom(to: ourView.bottomAnchor)
        bottomView.centerXAnchor.constraint(equalTo: ourView.centerXAnchor).isActive = true
        
        let topView = UIView()
        topView.backgroundColor = .darkGray
        view.addSubview(topView)

        topView.setWidth(50)
        topView.setHeight(50)
        topView.pinTop(to: ourView.topAnchor)
        topView.centerXAnchor.constraint(equalTo: ourView.centerXAnchor).isActive = true
        
        let centerView = UIView()
            centerView.backgroundColor = .red 
            view.addSubview(centerView)

            centerView.setWidth(50)
            centerView.setHeight(50)
            centerView.pinCenter(to: ourView)
    }

}

