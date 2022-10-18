//
//  PokemonViewController.swift
//  CollectionView
//
//  Created by kuani on 2022/10/18.
//

import UIKit

class PokemonViewController: UIViewController {
    
    @IBOutlet weak var pokemonImage: UIImageView!
    var pokemon:pokemonCollection!

    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonImage.image = UIImage(named: pokemon.pictureName2)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
