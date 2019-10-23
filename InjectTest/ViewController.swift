//
//  ViewController.swift
//  InjectTest
//
//  Created by Davide Vincenzi on 23.10.19.
//  Copyright © 2019 Davide Vincenzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @Inject private var appDependenciesModule: AppDependenciesModuleType

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let messageReporter: MessageReporter = appDependenciesModule.component()
        messageReporter.sendMessage()
    }


}

