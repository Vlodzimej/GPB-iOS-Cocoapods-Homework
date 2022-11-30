//
//  AmelkinViewController.swift
//  AmelkinHomework
//
//  Created by Владимир Амелькин on 29.11.2022.
//

import UIKit
import SnapKit

//MARK: - AmelkinViewController
public class AmelkinViewController: UIViewController {

    //MARK: UIConstants
    struct UIConstants {
        static let textOffset: CGFloat = 16
    }
    
    //MARK: UIProperties
    private let labelView: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 64, weight: .thin)
        label.textColor = .white
        return label
    }()
    
    //MARK: Properties
    private var text: String = "Vladimir Amelkin"
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemMint
        
        labelView.text = text
        view.addSubview(labelView)
        
        labelView.snp.makeConstraints { maker in
            maker.centerY.equalTo(view.snp.centerY)
            maker.leading.equalTo(view.snp.leading).offset(UIConstants.textOffset)
        }
    }
}

//MARK: - HasOtusHomeworkView
extension AmelkinViewController: HasOtusHomeworkView {
    public var squareView: UIView {
        return view
    }
}
