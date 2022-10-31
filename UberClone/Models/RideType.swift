//
//  RideType.swift
//  UberClone
//
//  Created by Yeldos Marat on 31.10.2022.
//

import Foundation

enum RideType: Int, CaseIterable, Identifiable {
    case uberX
    case uberBlack
    case uberXL
    
    var id: Int {
        return rawValue
    }
    
    var description: String {
        switch self {
        case .uberX:
            return "UberX"
        case .uberBlack:
            return "UberBlack"
        case .uberXL:
            return "UberXL"
        }
    }
    
    var imageName: String {
        switch self {
        case .uberX:
            return "carx"
        case .uberBlack:
            return "cb"
        case .uberXL:
            return "uberxl"
        }
    }
}
