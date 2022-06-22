//
//  ViewController.swift
//  ProdCrewChatSDK
//
//  Created by Saurav Kumar on 21/06/22.
//

import UIKit
import Flutter

class ViewController: UIViewController {
    private var flutterEngine: FlutterEngine?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func clickedOnChat(_ sender: UIBarButtonItem) {
        openChat()
    }
    
    
    private func openChat() {
        flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
          let flutterViewController =
       FlutterViewController(engine: flutterEngine!, nibName: nil, bundle: nil)
        flutterViewController.modalPresentationStyle = .fullScreen
        self.present(flutterViewController, animated: true, completion: nil)
    }


}

