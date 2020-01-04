//
//  EmptyContentView.swift
//  Club Jundiaiense
//
//  Created by Felipe Figueiredo on 10/17/17.
//  Copyright © 2017 BuildBox. All rights reserved.
//

import UIKit

public class EmptyContentView: UIView {
    
    private var stackView: UIStackView!
    public var contentImageView: UIImageView!
    public var descriptionLabel: UILabel!
    public var titleLabel: UILabel!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
        backgroundColor = .clear
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("coder initializer not implemented")
    }
    
    private func initSubviews() {
        contentImageView = UIImageView()
        contentImageView.contentMode = .scaleAspectFit
        
        descriptionLabel = UILabel()
        descriptionLabel.numberOfLines = 3
        
        titleLabel = UILabel()
        titleLabel.numberOfLines = 1
        
        stackView = UIStackView()
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 10.0
        stackView.addArrangedSubview(contentImageView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(descriptionLabel)
        
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [stackView.rightAnchor.constraint(equalTo: rightAnchor),
                           stackView.leftAnchor.constraint(equalTo: leftAnchor),
                           stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
                           stackView.topAnchor.constraint(equalTo: topAnchor)]
        NSLayoutConstraint.activate(constraints)
    }
}
