//
//  SecondViewController.swift
//  TabbedAppExample
//
//  Created by Danny Garcia on 10/5/16.
//  Copyright © 2016 Danny Garcia. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
  @IBOutlet weak var tableView: UITableView!
  
  var meals = [
    "Breakfast",
    "Meal 2",
    "Lunch",
    "Meal 4",
    "Dinner",
    "Post-workout Meal"
  ]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.meals.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    // Allocates a Table View Cell
    let aCell =
      self.tableView.dequeueReusableCell(withIdentifier: "cell",
                                         for: indexPath) as! TableViewCell
    
    // Sets the text of the Label in the Table View Cell
    aCell.titleLabel.text = self.meals[indexPath.row]
    return aCell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.performSegue(withIdentifier: "showView", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if (segue.identifier == "showView") {
      // upcoming is set to NewViewController (.swift)
      let upcoming: NewViewController = segue.destination as! NewViewController
      // indexPath is set to the path that was tapped
      let indexPath = self.tableView.indexPathForSelectedRow!
      // titleString is set to the title at the row in the objects array.
      let titleString = self.meals[indexPath.row]
      // the titleStringViaSegue property of NewViewController is set.
      upcoming.titleStringViaSegue = titleString
      self.tableView.deselectRow(at: indexPath, animated: true)
    }
  }
}

