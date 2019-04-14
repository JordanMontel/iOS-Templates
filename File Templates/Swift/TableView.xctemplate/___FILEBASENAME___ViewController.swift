//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___FULLUSERNAME___. All rights reserved.
//

import Foundation
import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Properties
    let cellReuseIdentifier = "___FILEBASENAMEASIDENTIFIER___CellID"
    var data = [Any]()

    // IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
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
        self.tableView.reloadData()
    }
    
    func configureUI() {
        
    }
    
    func localizeView() {
        
    }
    
    // MARK: - Custom Methods
    
    // MARK: - IBActions
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Current Cell
        let cell: ___FILEBASENAMEASIDENTIFIER___Cell! = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as? ___FILEBASENAMEASIDENTIFIER___Cell
        
        // Configure Cell
        cell.configureWith(___VARIABLE_objectClass:identifier___: (data[indexPath.row] as! ___VARIABLE_objectClass:identifier___))

        return cell
    }
    
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
    
    // MARK: - Memory
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
