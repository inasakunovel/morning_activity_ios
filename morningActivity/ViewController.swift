//
//  ViewController.swift
//  morningActivity
//
//  Created by Shinsaku Tashiro on 2020/01/21.
//  Copyright © 2020 Shinsaku Tashiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!

    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var titleImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // titleLabel設定
        let titleLabel = UILabel(frame: CGRect(x:100, y: 50, width: 100, height: 100))
        titleLabel.text = "アサカツ"
        self.view.addSubview(titleLabel)

        // loginButton設定
        let loginButton = UIButton(frame: CGRect(x:100, y:100, width:100, height: 100))
        loginButton.setTitle("Twitterログイン", for: UIControl.State.normal)
        loginButton.addTarget(self, action: #selector(authenticationEvent(_sender:)), for: UIControl.Event.touchUpInside)
        loginButton.sizeToFit()
        loginButton.backgroundColor = UIColor.blue
        self.view.addSubview(loginButton)

        // titleImage設定
        let topImage = UIImage(named: "top")
        let titleImage = UIImageView(frame: CGRect(x: 0, y:0, width: self.view.bounds.width, height: self.view.bounds.height ))
        titleImage.image = topImage
        self.view.addSubview(titleImage)

        // NSLayoutAnchor（制約)

    }

    //loginButtonタップ時Twitter認証を行う
    @objc func authenticationEvent(_sender: UIButton) {
        // Twitter認証を行う
        // 認証に失敗した場合、ホームにリダイレクトされる
        // 認証に成功した場合、利用規約画面にリダイレクトされる
        let termViewController = self.storyboard?.instantiateViewController(withIdentifier: "TermViewController") as! TermViewController
        navigationController?.pushViewController(termViewController, animated: true)
    }


}

