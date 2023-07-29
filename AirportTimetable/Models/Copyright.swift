//
//  Copyright.swift
//  AirportTimetable
//
//  Created by Vsevolod Lashin on 29.07.2023.
//

import Foundation

struct Copyright: Decodable {
    let copyright: CopyrightInformation
}

struct CopyrightInformation: Decodable {
    let text: String
    let url: String
}
