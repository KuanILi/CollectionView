//
//  ViewController.swift
//  CollectionView
//
//  Created by kuani on 2022/9/7.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rabbitImage: UIImageView!
    var rabbit:pictureCollection!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rabbitImage.image = UIImage(named:rabbit.PictureName)
    }


}

