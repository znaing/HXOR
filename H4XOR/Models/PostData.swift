//
//  PostData.swift
//  H4XOR
//
//  Created by Zaid Naing on 3/13/23.
//

import Foundation
struct Results: Decodable{
    let hits: [Post]
    
}
struct Post: Decodable, Identifiable{
    var id: String{
        return objectID
    }
    let objectID : String
    let points : Int
    let title : String
    let url : String?
}
