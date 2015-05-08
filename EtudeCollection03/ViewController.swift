//
//  ViewController.swift
//  EtudeCollection03
//
//  Created by Patrick Weigel on 4/5/15.
//  Copyright (c) 2015 Patrick Weigel. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet var collectionViewPW: UICollectionView!
    
    let elementsSymbol = ["H", "He", "Li", "Be", "B", "C", "N", "O", "F", "Ne", "Na", "Mg", "Al", "Si", "P", "S", "Cl", "Ar", "K", "Ca", "Sc", "Ti", "V", "Cr", "Mn", "Fe", "Co", "Ni", "Cu", "Zn", "Ga", "Ge", "As", "Se", "Br", "Kr", "Rb", "Sr", "Y", "Zr", "Nb", "Mo", "Tc", "Ru", "Rh", "Pd", "Ag", "Cd", "In", "Sn", "Sb", "Te", "I", "Xe", "Cs", "Ba", "La", "Ce", "Pr", "Nd", "Pm", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb", "Lu", "Hf", "Ta", "W", "Re", "Os", "Ir", "Pt", "Au", "Hg", "Tl", "Pb", "Bi", "Po", "At", "Rn", "Fr", "Ra", "Ac", "Th", "Pa", "U", "Np", "Pu", "Am", "Cm", "Bk", "Cf", "Es", "Fm", "Md", "No", "Lr", "Rfm", "Db", "Sg", "Bh", "Hs", "Mt", "Ds", "Rg", "Cn", "Uut", "Fl", "Uup", "Lv", "Uus", "Uuo"]
    
    // MARK: - UICollectionViewDataSource
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        NSLog("ViewController/numberOfItemsInSection")
        return elementsSymbol.count
    }
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        NSLog("ViewController/cellForItemAtIndexPath \(indexPath.row)")
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PWCollCellXX", forIndexPath: indexPath) as! PWCellCollectionViewCell
        let blueRatio = 1 - CGFloat(indexPath.row) / 100
        cell.backgroundColor = UIColor(red: 1 - blueRatio, green: 0.1, blue: blueRatio, alpha: 0.8)
        cell.elementLabel.text = elementsSymbol[indexPath.row]
        return cell
    }

    // MARK: - normal run loop functions
    override func viewDidLoad() {
        NSLog("ViewController/viewDidLoad")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidLayoutSubviews() {
//        NSLog("ViewController/viewDidLayoutSubviews")
        collectionViewPW.frame = self.view.frame
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

