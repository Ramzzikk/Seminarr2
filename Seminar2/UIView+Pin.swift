//
//  UIView+Pin.swift
//  Seminar2
//
//  Created by Рамазан Рахимов on 22.09.2023.
//

import UIKit

extension UIView {
    enum ConstraintMode {
        case equal, greaterOrEqual, lessOrEqual
    }

    // MARK: - Set width
    func setWidth(_ width: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }

    // MARK: - Set height
    func setHeight(_ height: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
    }

    // MARK: - Pin center
    func pinCenter(to view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    // MARK: - Pin center X
    func pinCenterX(to view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    // MARK: - Pin top
    func pinTop(to anchor: NSLayoutYAxisAnchor, _ constant: CGFloat = 0, mode: ConstraintMode = .equal) {
        translatesAutoresizingMaskIntoConstraints = false
        createConstraint(anchor: topAnchor, to: anchor, constant: constant, mode: mode).isActive = true
    }

    // MARK: - Pin bottom
    func pinBottom(to anchor: NSLayoutYAxisAnchor, _ constant: CGFloat = 0, mode: ConstraintMode = .equal) {
        translatesAutoresizingMaskIntoConstraints = false
        createConstraint(anchor: bottomAnchor, to: anchor, constant: -constant, mode: mode).isActive = true
    }

    // MARK: - Pin left
    func pinLeft(to anchor: NSLayoutXAxisAnchor, _ constant: CGFloat = 0, mode: ConstraintMode = .equal) {
        translatesAutoresizingMaskIntoConstraints = false
        createConstraint(anchor: leadingAnchor, to: anchor, constant: constant, mode: mode).isActive = true
    }

    // MARK: - Pin right
    func pinRight(to anchor: NSLayoutXAxisAnchor, _ constant: CGFloat = 0, mode: ConstraintMode = .equal) {
        translatesAutoresizingMaskIntoConstraints = false
        createConstraint(anchor: trailingAnchor, to: anchor, constant: -constant, mode: mode).isActive = true
    }

    // MARK: - Pin width
    func pinWidth(to dimension: NSLayoutDimension, multiplier: CGFloat = 1.0) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalTo: dimension, multiplier: multiplier).isActive = true
    }

    // MARK: - Pin height
    func pinHeight(to dimension: NSLayoutDimension, multiplier: CGFloat = 1.0) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalTo: dimension, multiplier: multiplier).isActive = true
    }


    // MARK: - Create Constraint
    private func createConstraint<T>(anchor: NSLayoutAnchor<T>, to: NSLayoutAnchor<T>, constant: CGFloat, mode: ConstraintMode) -> NSLayoutConstraint {
        switch mode {
        case .equal:
            return anchor.constraint(equalTo: to, constant: constant)
        case .greaterOrEqual:
            return anchor.constraint(greaterThanOrEqualTo: to, constant: constant)
        case .lessOrEqual:
            return anchor.constraint(lessThanOrEqualTo: to, constant: constant)
        }
    }

}
