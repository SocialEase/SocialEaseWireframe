//
//  OtherPreferenceViewController.swift
//  SocialEaseWireframe
//
//  Created by Amay Singhal on 10/16/15.
//  Copyright © 2015 ple. All rights reserved.
//

import UIKit

class OtherPreferenceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var preferenceTableView: UITableView!

    private var otherPreferenceCategories = [("Search distance:", PreferenceObject.getDistancePrefrences()),
        ("How often do you like to try something new?", PreferenceObject.getTryNewPrefrences())]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        preferenceTableView.delegate = self
        preferenceTableView.dataSource = self
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return otherPreferenceCategories.count
    }

    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return otherPreferenceCategories[section].0
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return otherPreferenceCategories[section].1!.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = preferenceTableView.dequeueReusableCellWithIdentifier(SLESStoryBoard.PreferenceViewCellIdentifier, forIndexPath: indexPath) as! PreferenceViewCell
        cell.preference = otherPreferenceCategories[indexPath.section].1![indexPath.row]
        return cell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        for preference in otherPreferenceCategories[indexPath.section].1! {
            preference.isSelected = false
        }
        otherPreferenceCategories[indexPath.section].1![indexPath.row].isSelected = true
        tableView.reloadSections(NSIndexSet(index: indexPath.section), withRowAnimation: .None)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
