//
//  DetailViewController.swift
//  Note It
//
//  Created by Paul Saade on 2017-02-03.
//  Copyright © 2017 Paul Saade. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    var text:String = ""
    var masterView:ViewController!
    //THe following are here so I can attempt to allow rich text editing in the UITextView.
    //var isRichtext: Bool = true
    var allowsEditingTextAttributes: Bool = true

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.text = text
        textView.allowsEditingTextAttributes = true
        textView.becomeFirstResponder()
        
    }
    
    func setText(t:String) {
        text = t
        if isViewLoaded {
            textView.text = t
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        masterView.newRowText = textView.text
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        masterView.newRowText = textView.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
