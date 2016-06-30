//
//  RedVC.swift
//  no-storyboards-exercise
//
//  Created by Adam Goth on 6/29/16.
//  Copyright © 2016 Adam Goth. All rights reserved.
//

import UIKit

class RedVC: UIViewController {
    
    var blueVC: BlueVC!
    var yellowVC: YellowVC!
    
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
    
    @IBAction func loadBlueView(sender: AnyObject) {
        blueVC = BlueVC.init(nibName: "BlueVC", bundle: nil)
        self.presentViewController(blueVC, animated: true, completion: nil)
    }

    @IBAction func backToYellow(sender: AnyObject) {
        yellowVC = YellowVC.init(nibName: "YellowVC", bundle: nil)
        self.presentViewController(yellowVC, animated: true, completion: nil)
    }
}
