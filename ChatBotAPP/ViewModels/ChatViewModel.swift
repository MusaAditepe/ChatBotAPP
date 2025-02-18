//
//  ChatViewModel.swift
//  ChatBotAPP
//
//  Created by Musa Adıtepe on 18.02.2025.
//

import Foundation

class ChatViewModel {
    private let networkService: NetworkService
    private(set) var messages: [Message] = []
    var onMessagesUpdated: (() -> Void)?
    
    init(networkService: NetworkService = NetworkService()) {
        self.networkService = networkService
    }
    
    func sendMessage(_ text: String) {
        let userMessage = Message(text: text, isFromUser: true)
        messages.append(userMessage)
        onMessagesUpdated?()
        
        networkService.sendMessage(text) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let response):
                    let botMessage = Message(text: response, isFromUser: false)
                    self?.messages.append(botMessage)
                    self?.onMessagesUpdated?()
                    
                case .failure(let error):
                    let errorMessage = Message(text: error.localizedDescription, isFromUser: false)
                    self?.messages.append(errorMessage)
                    self?.onMessagesUpdated?()
                }
            }
        }
    }
} 
