# Xcode7HeaderTemplate
base from: https://littlebitesofcocoa.com/89-custom-xcode-file-templates
Custom template header in Xcode - UITableViewController

1. Go to folder ~/Library/Developer/Xcode/Templates/File Templates/
2. Create Static Table View Controller.xctemplate(example folder name "Statuc Table View "with extension .xctemplate)
3. Create icon (obtain TemplateIcon.png<48x48 pixel> and TemplateIcon@2x.png<96x96 pixel>) inside your folder
4. Create swift file 
```shell
___FILEBASENAME___.swift
```
Example
```shell
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
```
Last create TemplateInfo.plist
```shell
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Kind</key>
	<string>Xcode.IDEFoundation.TextSubstitutionFileTemplateKind</string>
	<key>Description</key>
	<string>An empty Static TableViewController</string>
	<key>Summary</key>
	<string>An empty Static TableViewController</string>
	<key>SortOrder</key>
	<string>11</string>
	<key>DefaultCompletionName</key>
	<string>ViewController</string>
	<key>Platforms</key>
	<array>
		<string>com.apple.platform.iphoneos</string>
	</array>
	<key>MainTemplateFile</key>
	<string>___FILEBASENAME___.swift</string>
</dict>
</plist>
```
