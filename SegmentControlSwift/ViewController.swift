//
//  ViewController.swift
//  SegmentControlSwift
//
//  Created by MAC OS on 5/19/17.
//  Copyright © 2017 MAC OS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var seg: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        seg.removeAllSegments();
        seg.insertSegment(withTitle: "Blue", at: 0, animated: true);
        seg.insertSegment(withTitle: "Green", at: 1, animated: true);
        seg.insertSegment(withTitle: "Red", at: 2, animated: true);
        seg.insertSegment(withTitle: "Yellow", at: 3, animated: true);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func seg_action(_ sender: Any) {
        if seg.selectedSegmentIndex==0 {
            self.view.backgroundColor=UIColor.blue;
        }
        else if seg.selectedSegmentIndex==1 {
            self.view.backgroundColor=UIColor.green;
        }
        else if seg.selectedSegmentIndex==2 {
            self.view.backgroundColor=UIColor.red;
        }
        else if seg.selectedSegmentIndex==3 {
            self.view.backgroundColor=UIColor.yellow;
        }
    }

}

