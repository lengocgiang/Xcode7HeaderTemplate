//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit


class ___FILEBASENAMEASIDENTIFIER___: UITableViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

  }
  
  // MARK: Table view data source
  
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 7
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("CELL_DEFAULT_IDENTIFIER", forIndexPath: indexPath) as UITableViewCell
    
    cell.textLabel!.text = "A cell"
    
    return cell
  }
}
