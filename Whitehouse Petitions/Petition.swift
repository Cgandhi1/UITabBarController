//
//  Petition.swift
//  Whitehouse Petitions
//
//  Created by  admin on 3/19/19.
//  Copyright © 2019  admin. All rights reserved.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
    
}
