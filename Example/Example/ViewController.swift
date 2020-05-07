//
//  ViewController.swift
//  Example
//
//  Created by MYUNGHOON HONG on 2020/04/24.
//  Copyright © 2020 hmhv. All rights reserved.
//

import UIKit
import SoftUIView

class ViewController: UIViewController {

    @IBOutlet weak var titleView: SoftUIView!
    @IBOutlet weak var countUpView: SoftUIView!
    @IBOutlet weak var todoView: SoftUIView!
    @IBOutlet weak var githubSearchView: SoftUIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = UIColor(cgColor: SoftUIView.defalutMainColorColor)

        titleView.addLabel(text: "MobS Examples")
        titleView.type = .normal
        titleView.isSelected = true

        countUpView.addLabel(text: "Count Up")
        countUpView.addTarget(self, action: #selector(showCountUpVC), for: .touchUpInside)

        todoView.addLabel(text: "Todo")
        todoView.addTarget(self, action: #selector(showTodoVC), for: .touchUpInside)

        githubSearchView.addLabel(text: "Github Search")
        githubSearchView.addTarget(self, action: #selector(showGithubSearchVC), for: .touchUpInside)
    }

    @objc func showCountUpVC() {
        let vc = CountUpViewController.newVC()
        present(vc, animated: true)
    }

    @objc func showTodoVC() {
        let vc = TodoListViewController.newVC()
        present(vc, animated: true)
    }

    @objc func showGithubSearchVC() {
        let vc = GithubSearchViewController.newVC()
        present(vc, animated: true)
    }

}
