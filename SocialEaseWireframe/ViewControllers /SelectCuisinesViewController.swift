//
//  SelectCuisinesViewController.swift
//  SocialEaseWireframe
//
//  Created by Amay Singhal on 10/16/15.
//  Copyright © 2015 ple. All rights reserved.
//

import UIKit


class SelectCuisinesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var cuisinesCollectioView: UICollectionView!


    private var cuisines = ["Indian", "Thai", "Korean", "Japanese", "Italian", "Indian", "Thai", "Korean", "Japanese", "Italian", "Indian", "Thai", "Korean", "Japanese", "Italian"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupCollectionView()
    }

    override func viewDidAppear(animated: Bool) {
        performSegueWithIdentifier("Show Setup Information", sender: self)
    }
    
    // MARK: - Collection view ds and delg methods
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cuisines.count
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = cuisinesCollectioView.dequeueReusableCellWithReuseIdentifier(SLESStoryBoard.CuisinesViewCellIdentifier, forIndexPath: indexPath) as! CuisineViewCell
        cell.cuisine = cuisines[indexPath.row]
        return cell
    }
    

    // MARK: - Helper functions
    private func setupCollectionView() {
        cuisinesCollectioView.delegate = self
        cuisinesCollectioView.dataSource = self
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
