//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___FULLUSERNAME___. All rights reserved.
//

import Foundation
import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    
    // Properties

    // IBOutlets
    
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
        
    }
    
    func configureUI() {
        
    }
    
    func localizeView() {
        
    }
    
    // MARK: - Custom Methods
    
    // MARK: - IBActions
    
    // MARK: - Memory
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
