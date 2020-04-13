//
//  License.swift
//  CALicense
//
//  Created by Andrew Despres on 4/2/19.
//  Copyright © 2019 Downey City Library. All rights reserved.
//

import Foundation

public struct License {
    public var firstname = ""
    public var lastname = ""
    public var middlename = ""
    public var birthdate = ""
    public var sex = ""
    public var address = ""
    public var city = ""
    public var state = ""
    public var zip = ""
    public var number = ""
    
    public func debugDescription() {
        print("\nFirst Name:", self.firstname)
        print("Last Name:", self.lastname)
        print("Middle Name:", self.middlename)
        print("Birth Date:", self.birthdate)
        print("Sex:", self.sex)
        print("Address:", self.address)
        print("City", self.city)
        print("State", self.state)
        print("Zip", self.zip)
        print("Number:", self.number)
    }
}
