//
//  NetworkServiceMock.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Victor on 25.02.2024.
//

import Foundation

final actor NetworkServiceMock: NetworkServiceProtocol {
    
    func getQuestions(amount: Int, difficulty: QuestionDifficalty, delay: Int) async -> Result<QuestionsEntity, NetworkError> {
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        let fileURL = Bundle.main.url(forResource: "response_\(difficulty.rawValue)", withExtension: "json")!
        let data = try! Data(contentsOf: fileURL)
        let decoded = try! decoder.decode(QuestionsEntity.self, from: data)
        
        return .success(decoded)
    }
}
