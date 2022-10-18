//
//  pokemonCollectionViewController.swift
//  CollectionView
//
//  Created by kuani on 2022/10/18.
//

import UIKit


class pokemonCollectionViewController: UICollectionViewController {
    
    var pokemons = [
        pokemonCollection(pictureName2: "pica"),
        pokemonCollection(pictureName2: "picb"),
        pokemonCollection(pictureName2: "picc"),
        pokemonCollection(pictureName2: "picd"),
        pokemonCollection(pictureName2: "pice"),
        pokemonCollection(pictureName2: "picf"),
        pokemonCollection(pictureName2: "picg"),
        pokemonCollection(pictureName2: "pich"),
        pokemonCollection(pictureName2: "pici")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }
    
    @IBSegueAction func showPicture2(_ coder: NSCoder) -> UIViewController? {
        guard let item = collectionView.indexPathsForSelectedItems?.first?.item else{
            return nil
        }

            let controller2 = PokemonViewController(coder: coder)
            controller2?.pokemon = pokemons[item]
            return controller2
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
        return pokemons.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(PokemonCollectionViewCell.self)", for: indexPath) as! PokemonCollectionViewCell
        let picture2 = pokemons[indexPath.item]
        cell.pokemonPicture.image = UIImage(named: picture2.pictureName2)
    
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
