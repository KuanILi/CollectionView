//
//  CollectionViewController.swift
//  CollectionView
//
//  Created by kuani on 2022/9/7.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    var pictures = [
        pictureCollection(PictureName: "pic0"),
        pictureCollection(PictureName: "pic1"),
        pictureCollection(PictureName: "pic2"),
        pictureCollection(PictureName: "pic3"),
        pictureCollection(PictureName: "pic4"),
        pictureCollection(PictureName: "pic5"),
        pictureCollection(PictureName: "pic6"),
        pictureCollection(PictureName: "pic7"),
        pictureCollection(PictureName: "pic8")
    
    ]
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    @IBSegueAction func showPicture(_ coder: NSCoder) -> UIViewController? {

     
        
        guard let item = collectionView.indexPathsForSelectedItems?.first?.item else{
            return nil
        }

            let controller = ViewController(coder: coder)
            controller?.rabbit = pictures[item]
            return controller
            }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return pictures.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(PictureCollectionViewCell.self)", for: indexPath) as! PictureCollectionViewCell
        let picture2 = pictures[indexPath.item]
        cell.rabbitPicture.image = UIImage(named: picture2.PictureName)
    
       
    
        return cell
    }
    
    

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
