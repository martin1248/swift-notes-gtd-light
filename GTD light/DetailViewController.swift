//
//  DetailViewController.swift
//  GTD light
//
//  Created by martin1248 on 13.12.18.
//  Copyright © 2018 martin1248. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    var text:String = ""
    var masterView:ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.text = text
        self.navigationItem.largeTitleDisplayMode = .never
    }

    func setText(t:String) {
        text = t
        if isViewLoaded {
            textView.text = t
        }
    }

// MARK: - UIViewController

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // First responder = object currently receiving events
        // calling this on a textfield/textview automatically brings up the keyboard
        // Note: Do not forget Simulator > Hardware > Keyboard > Toogle ...
        textView.becomeFirstResponder()

    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        masterView.newRowText = textView.text
        textView.resignFirstResponder()
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
