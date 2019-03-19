//
//  DetailViewController.swift
//  Whitehouse Petitions
//
//  Created by  admin on 3/19/19.
//  Copyright © 2019  admin. All rights reserved.
//

import UIKit
import WebKit


class DetailViewController: UIViewController {
    
    var webView: WKWebView!
    var detailItem: Petition?

    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView()
        view = webView

        guard let detailItem = detailItem else { return }
        
        let html = """
        <html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style> body { font-size: 150%; } </style>
        </head>
        <body>
        \(detailItem.body)
        </body>
        </html>
        """
        
        webView.loadHTMLString(html, baseURL: nil)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
