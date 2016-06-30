//
//  YellowVC.swift
//  no-storyboards-exercise
//
//  Created by Adam Goth on 6/29/16.
//  Copyright © 2016 Adam Goth. All rights reserved.
//

import UIKit

class YellowVC: UIViewController {
    
    var redVC: RedVC!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadRedView(sender: AnyObject) {
        redVC = RedVC.init(nibName: "RedVC", bundle: nil)
        self.presentViewController(redVC, animated: true, completion: nil)
    }

}
