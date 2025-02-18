//
//  Message.swift
//  ChatBotAPP
//
//  Created by Musa Adıtepe on 18.02.2025.
//

import Foundation

struct Message {
    let text: String
    let isFromUser: Bool
    let date: Date
    
    init(text: String, isFromUser: Bool, date: Date = Date()) {
        self.text = text
        self.isFromUser = isFromUser
        self.date = date
    }
} 
