//
//  Frases.swift
//  motivationApp
//
//  Created by Mac m2 on 19/04/24.
//

import Foundation

struct Dados: Codable {
    let _id: String
    let _rev: String
    let data: [Frases]
}

struct Frases: Codable, Identifiable {
    let id: Int
    let autor: String
    let frase: String
    
}
