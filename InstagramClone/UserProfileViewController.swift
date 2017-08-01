//
//  UserProfileViewController.swift
//  InstagramClone
//
//  Created by Akaanksha Sharman on 01/08/17.
//  Copyright © 2017 Akaanksha Sharman. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    private let CELL_USERPROFILE_IDENTIFIER = "userPicturesCell"
    private let CELL_USERPICTURES_IDENTIFIER = "UserProfileReusableCollectionVwHeaderCell"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CELL_USERPROFILE_IDENTIFIER, for: indexPath) as! UserPicturesViewController
        cell.userPicturesImgVw.image = #imageLiteral(resourceName: "Event-Blogging-Strategies")
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let cell = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: CELL_USERPICTURES_IDENTIFIER, for: indexPath) as! UserProfileReusableCollectionVwHeaderCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        print(collectionView.frame.size.width / 4)
        return CGSize(width: CGFloat((collectionView.frame.size.width / 4)), height: CGFloat(93))
    }
    
 }
