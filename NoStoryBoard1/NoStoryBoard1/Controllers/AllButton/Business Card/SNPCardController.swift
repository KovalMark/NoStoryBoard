//
//  SNPCardController.swift
//  NoStoryBoard1
//
//  Created by Марк Коваль on 18/07/2022.
//

import UIKit
import SnapKit

// MARK: SNPCardController
class SNPCardController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    // MARK: setUpView
    private func setUpView() {
        
        // ScrollView
        let scroll = UIScrollView()
        scroll.backgroundColor = #colorLiteral(red: 0.4865377545, green: 0.4129810333, blue: 0.4957652688, alpha: 1)
        view.addSubview(scroll)
        scroll.snp.makeConstraints { maker in
            maker.left.equalToSuperview().inset(0)
            maker.top.equalToSuperview().inset(0)
            maker.right.equalToSuperview().inset(0)
            maker.bottom.equalToSuperview().inset(0)
        }
        
        // Photo
        let photo = UIImageView()
        photo.image = UIImage(systemName: "livephoto")
        photo.backgroundColor = #colorLiteral(red: 0.8514456749, green: 0.5804716349, blue: 0.3252245784, alpha: 1)
        photo.tintColor = #colorLiteral(red: 0.2237454355, green: 0.2437752783, blue: 0.3576468825, alpha: 1)
        photo.layer.cornerRadius = 120
        photo.contentMode = .scaleAspectFill
        scroll.addSubview(photo)
        photo.snp.makeConstraints { maker in
            maker.centerX.equalTo(scroll)
            maker.top.equalTo(scroll).inset(50)
            maker.height.width.equalTo(250)
        }
        
        // First Label
        let firstLabel = UILabel()
        firstLabel.text = "Koval Mark"
        firstLabel.font = UIFont.systemFont(ofSize: 50)
        firstLabel.textColor = #colorLiteral(red: 0.8347052932, green: 0.6351812482, blue: 0.5606315136, alpha: 1)
        scroll.addSubview(firstLabel)
        firstLabel.snp.makeConstraints { maker in
            maker.centerX.equalTo(scroll)
            maker.top.equalTo(photo.snp_bottomMargin).inset(-25)
        }
        
        // Second Label
        let secondLabel = UILabel()
        secondLabel.text = "iOS Developer"
        secondLabel.font = UIFont.systemFont(ofSize: 30)
        secondLabel.textColor = #colorLiteral(red: 0.8347052932, green: 0.6351812482, blue: 0.5606315136, alpha: 1)
        scroll.addSubview(secondLabel)
        secondLabel.snp.makeConstraints { maker in
            maker.centerX.equalTo(scroll)
            maker.top.equalTo(firstLabel.snp_bottomMargin).inset(-25)
            maker.bottom.equalToSuperview()
        }
    }
}
