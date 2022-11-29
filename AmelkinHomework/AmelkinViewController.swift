//
//  AmelkinViewController.swift
//  AmelkinHomework
//
//  Created by Владимир Амелькин on 29.11.2022.
//

import SnapKit
import OtusHomework

import UIKit

//MARK: - AmelkinViewController
public class AmelkinViewController: UIViewController {

    //MARK: UIConstants
    struct UIConstants {
        
    }
    
    //MARK: UIProperties
    private let labelView: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        return label
    }()
    
    //MARK: Properties
    private var text: String = "Vladimir Amelkin"
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        labelView.text = text
        
        squareView.addSubview(labelView)
        
        labelView.snp.makeConstraints { maker in
            maker.center.equalTo(squareView.center)
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
