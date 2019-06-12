//
//  MessageThread.swift
//  MessageBoard
//
//  Created by Enayatullah Naseri on 6/11/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
//

import Foundation

class MessageThread: Codable, Equatable {
    
    
    
    var title: String
    var identifier: String
    var messages: [MessageThread.Message]
    
//    init(title: String, identifier: String) {
//        self.title = title
//        self.identifier = identifier
//
//    }
    
    struct Message: Codable, Equatable {
        
        var text: String
        var sender: String
        var timestamp: Date
        
        init(text: String, sender: String, timestamp: Date = Date()) {
            self.text = text
            self.sender = sender
            self.timestamp = timestamp
        }
    }
    
    static func == (lhs: MessageThread, rhs: MessageThread) -> Bool {
        return lhs.title == rhs.title &&
            lhs.identifier == rhs.identifier &&
            lhs.messages == rhs.messages
    }
}
