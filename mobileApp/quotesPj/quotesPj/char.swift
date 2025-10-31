//
//  character.swift
//  quotesPj
//
//  Created by H on 10/30/25.
//

import Foundation

struct char: Decodable {
    let name: String
    let birthday: String?
    let occupations: [String]
    let images: [URL]
    let aliases: [String]
    let status: String
    let portrayedBy: String
    let death: death?
    
}
