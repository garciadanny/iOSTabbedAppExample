//
//  NewViewController.swift
//  TabbedAppExample
//
//  Created by Danny Garcia on 10/11/16.
//  Copyright © 2016 Danny Garcia. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
  @IBOutlet weak var productLabel: UILabel!
  var titleStringViaSegue: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      self.productLabel.text = self.titleStringViaSegue
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
