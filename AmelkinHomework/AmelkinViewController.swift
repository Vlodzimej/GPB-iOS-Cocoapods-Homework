//
//  AmelkinViewController.swift
//  AmelkinHomework
//
//  Created by Владимир Амелькин on 29.11.2022.
//

import UIKit
import SnapKit
import OtusHomework

//MARK: - AmelkinViewController
public class AmelkinViewController: UIViewController {

    //MARK: UIConstants
    struct UIConstants {
        static let textOffset: CGFloat = 16
    }
    
    //MARK: UIProperties
    private let labelView: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        label.textColor = .white
        return label
    }()
    
    //MARK: Properties
    private var text: String = "Vladimir Amelkin"
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        labelView.text = text
        
        squareView.addSubview(labelView)
        
        labelView.snp.makeConstraints { maker in
            maker.centerY.equalTo(squareView.snp.centerY)
            maker.leading.equalTo(squareView.snp.leading).offset(UIConstants.textOffset)
        }
    }
}

//MARK: - HasOtusHomeworkView
extension AmelkinViewController: HasOtusHomeworkView {
    public var squareView: UIView {
        let view = UIView()
        view.backgroundColor = .red
        view.layer.cornerRadius = 16
        return view
    }
}
