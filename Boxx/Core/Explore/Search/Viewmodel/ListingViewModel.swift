//
//  ListingViewModel.swift
//  Boxx
//
//  Created by Nikita Larin on 16.11.2023.
//

import Foundation

struct ListingViewModel: Identifiable, Codable{
    let id: String
    let ownerUid: String
    let ownerName: String
    let imageUrl: String
    let boxSize: String
    let numbersofKillo: Int
    var pricePerKillo: Int
    let latitude: Double
    let longtude: Double
    let cityFrom: String
    let cityTo: String
    let titel: String
    var imageUrls: [String]
    var rating: Double
    var features: [ListingFeatures]
    var top: [ListingTop]
    
}
enum ListingFeatures: Int, Codable, Identifiable, Hashable{
    case selfCheckIn
    case superShip
    
    var imageName: String{
        switch self{
        case .selfCheckIn: return "star.circle"
        case .superShip: return "medal"
        }
    }
    
    var title: String{
        switch self {
        case .selfCheckIn: return "Линость проверена"
        case .superShip: return "Супер доставка"
            
            

            
        }
    }
    var subtitle: String{
        switch self {
        case .selfCheckIn: return "Мы проверли аккаунт пользователя, он предоставил своио документы в служюу поддержки"
        case .superShip: return "Данный пользователь совершил более 100 доставок"
            
            

            
        }
    }
    
    
    
    var id: Int {return self.rawValue}
}
enum ListingTop: Int, Codable, Identifiable, Hashable{
    case fast
    case saved
    case securely
    
    var title: String{
        switch self{
        case .fast: return "Быстро"
        case .saved: return "Безопасно"
        case .securely: return "Надежно"
        }
    }
    var imageName: String{
        switch self{
        case .fast: return "airplane.circle"
        case .saved: return "lock.rotation"
        case .securely: return "v.circle"
        }
    }
    
    var id: Int {return self.rawValue}

}
