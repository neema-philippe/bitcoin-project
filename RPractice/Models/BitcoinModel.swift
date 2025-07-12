//
//  BitcoinModel.swift
//  RPractice
//
//  Created by Neema Philippe on 7/11/25.
//

import Foundation

struct BitcoinResponse: Codable {
    let bpi: BPI
}

struct BPI: Codable {
    let USD: Currency
}

struct Currency: Codable {
    let rate: String
}
