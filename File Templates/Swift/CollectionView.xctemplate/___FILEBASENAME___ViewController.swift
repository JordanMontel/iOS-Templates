//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___FULLUSERNAME___. All rights reserved.
//

import Foundation
import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    // Properties
    let cellReuseIdentifier = "___FILEBASENAMEASIDENTIFIER___CellID"
    var data = [Any]()

    // IBOutlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - View Management
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Refresh UI
        self.refreshUI()
        
        // Configure UI
        self.configureUI
        
        // i18n
        self.localizeView()
    }
    
    // MARK: - Rotation
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    // MARK: - Configuration Methods
    func refreshUI() {
        
        // Reload
        self.collectionView.reloadData()
    }
    
    func configureUI() {
        
    }
    
    func localizeView() {

    }
    
    // MARK: - Custom Methods
    
    // MARK: - IBActions
    
    // MARK: - UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Current Cell
        let cell: ___FILEBASENAMEASIDENTIFIER___Cell! = self.collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath as IndexPath) as? ___FILEBASENAMEASIDENTIFIER___Cell
        
        // Configure Cell
        cell.configureWith(___VARIABLE_objectClass:identifier___: (data[indexPath.row] as! ___VARIABLE_objectClass:identifier___))
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    }
    
    // MARK: - Memory
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
