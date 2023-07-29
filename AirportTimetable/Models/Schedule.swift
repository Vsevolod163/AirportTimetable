//
//  Schedule.swift
//  AirportTimetable
//
//  Created by Vsevolod Lashin on 29.07.2023.
//

import Foundation

struct Schedule: Decodable {
    let schedule: [ScheduleInformation]
}

struct ScheduleInformation: Decodable {
    let thread: Thread
    let departure: String
    let arrival: String
}

struct Thread: Decodable {
    let number: String
    let title: String
    let vehicle: String
}
