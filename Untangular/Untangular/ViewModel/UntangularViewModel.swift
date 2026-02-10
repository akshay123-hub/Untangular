//
//  UntangularViewModel.swift
//  Untangular
//
//  Created by Akshay Kumar on 10/02/26.
//

import Foundation
import UIKit

protocol UntangularViewModelDelegate: AnyObject {
    func levelUp(connection: [UIView]) -> Void
}

class UntangularViewModel {
    weak var delegate: UntangularViewModelDelegate?
    
    func levelUp(connection: [UIView]) {
        
    }
}
