//
//  PreferenceObject.swift
//  SocialEaseWireframe
//
//  Created by Amay Singhal on 10/16/15.
//  Copyright © 2015 ple. All rights reserved.
//

import UIKit

class PreferenceObject: NSObject {

    var name: String
    var isSelected: Bool

    init(name: String, isSelected selected: Bool) {
        self.name = name
        self.isSelected = selected
    }

    class func getDistancePrefrences() -> [PreferenceObject]? {
        var distancePreferences = [PreferenceObject]()
        distancePreferences.append(PreferenceObject(name: "1 miles", isSelected: false))
        distancePreferences.append(PreferenceObject(name: "5 miles", isSelected: false))
        distancePreferences.append(PreferenceObject(name: "10 miles", isSelected: false))
        distancePreferences.append(PreferenceObject(name: "20 miles", isSelected: false))
        distancePreferences.append(PreferenceObject(name: "50 miles", isSelected: false))
        return distancePreferences
    }

    class func getTryNewPrefrences() -> [PreferenceObject]? {
        var distancePreferences = [PreferenceObject]()
        distancePreferences.append(PreferenceObject(name: "Quite often", isSelected: false))
        distancePreferences.append(PreferenceObject(name: "Sometimes", isSelected: false))
        distancePreferences.append(PreferenceObject(name: "Never", isSelected: false))
        return distancePreferences
    }
}
