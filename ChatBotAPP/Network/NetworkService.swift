//
//  NetworkService.swift
//  ChatBotAPP
//
//  Created by Musa Adıtepe on 18.02.2025.
//

import Foundation

class NetworkService {
    private let witAIToken = "Your_Server_Access_Token"
    private let baseURL = "https://api.wit.ai/message"
    private let botResponses = BotResponses.shared
    
    func sendMessage(_ message: String, completion: @escaping (Result<String, Error>) -> Void) {
        if witAIToken.isEmpty {
            completion(.failure(NetworkError.invalidToken))
            return
        }
        
        guard let encodedMessage = message.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
              let url = URL(string: "\(baseURL)?v=20240214&q=\(encodedMessage)") else {
            completion(.failure(NetworkError.invalidURL))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("Bearer \(witAIToken)", forHTTPHeaderField: "Authorization")
        
        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
            guard let self = self else { return }
            
            if let error = error {
                completion(.failure(error))
                return
            }
            
            if let httpResponse = response as? HTTPURLResponse {
                switch httpResponse.statusCode {
                case 401:
                    completion(.failure(NetworkError.unauthorized))
                    return
                case 400..<500:
                    completion(.failure(NetworkError.clientError(httpResponse.statusCode)))
                    return
                case 500..<600:
                    completion(.failure(NetworkError.serverError(httpResponse.statusCode)))
                    return
                default:
                    break
                }
            }
            
            guard let data = data else {
                completion(.failure(NetworkError.noData))
                return
            }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data) as? [String: Any] {
                    print("Wit.ai Yanıtı:", json)
                    
                    if let intents = json["intents"] as? [[String: Any]], !intents.isEmpty,
                       let firstIntent = intents.first,
                       let intentName = firstIntent["name"] as? String {
                        
                        let responseText: String
                        
                        // Intent yanıtını hazırla
                        switch intentName {
                        case "selamlasma":
                            responseText = self.botResponses.createSelamlamaYaniti()
                            
                        case "hava_durumu":
                            var location: String? = nil
                            if let entities = json["entities"] as? [String: [[String: Any]]],
                               let locationEntities = entities["wit$location:location"],
                               let firstLocation = locationEntities.first,
                               let locationValue = firstLocation["value"] as? String {
                                location = locationValue
                            }
                            responseText = self.botResponses.createHavaDurumuYaniti(location: location)
                            
                        case "saat_sorma":
                            responseText = self.botResponses.createSaatYaniti()
                            
                        case "yemek_onerisi":
                            responseText = self.botResponses.createYemekOnerisiYaniti()
                            
                        case "film_onerisi":
                            responseText = self.botResponses.createFilmOnerisiYaniti()
                            
                        case "muzik_onerisi":
                            responseText = self.botResponses.createMuzikOnerisiYaniti()
                            
                        case "egzersiz_onerisi":
                            responseText = self.botResponses.createEgzersizOnerisiYaniti()
                            
                        case "motivasyon":
                            responseText = self.botResponses.createMotivasyonYaniti()
                            
                        case "kitap_onerisi":
                            responseText = self.botResponses.createKitapOnerisiYaniti()
                            
                        case "vedalasma":
                            responseText = self.botResponses.createVedalasmaYaniti()
                            
                        case "tesekkur":
                            responseText = self.botResponses.createTesekkurYaniti()
                            
                        default:
                            responseText = self.botResponses.createAnlamadimYaniti()
                        }
                        
                        completion(.success(responseText))
                        return
                    } else {
                        completion(.failure(NetworkError.noIntentFound))
                    }
                } else {
                    completion(.failure(NetworkError.invalidJSON))
                }
            } catch {
                completion(.failure(NetworkError.jsonParsingError(error.localizedDescription)))
            }
        }
        task.resume()
    }
}

enum NetworkError: LocalizedError {
    case invalidToken
    case invalidURL
    case invalidResponse
    case unauthorized
    case clientError(Int)
    case serverError(Int)
    case noData
    case invalidJSON
    case jsonParsingError(String)
    case noIntentFound
    
    var errorDescription: String? {
        switch self {
        case .invalidToken:
            return "Lütfen geçerli bir Wit.ai token'ı ekleyin"
        case .invalidURL:
            return "Geçersiz URL"
        case .invalidResponse:
            return "Geçersiz sunucu yanıtı"
        case .unauthorized:
            return "Yetkisiz erişim. Lütfen Wit.ai token'ınızı kontrol edin"
        case .clientError(let code):
            return "İstemci hatası: \(code)"
        case .serverError(let code):
            return "Sunucu hatası: \(code)"
        case .noData:
            return "Sunucudan veri alınamadı"
        case .invalidJSON:
            return "Geçersiz JSON formatı"
        case .jsonParsingError(let message):
            return "JSON ayrıştırma hatası: \(message)"
        case .noIntentFound:
            return "Üzgünüm, ne demek istediğinizi anlayamadım"
        }
    }
}
