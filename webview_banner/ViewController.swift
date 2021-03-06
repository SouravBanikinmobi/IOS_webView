//
//  ViewController.swift
//  webview_banner
//
//  Created by Sourav Banik on 03/08/18.
//  Copyright © 2018 Sourav Banik. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let htmlpath=Bundle.main.path(forResource: "v3.1", ofType: "html")
        let url:URL=URL(fileURLWithPath: htmlpath!)
        
        
        
        let urlrequest=URLRequest(url:url);
        webView.load(urlrequest);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

