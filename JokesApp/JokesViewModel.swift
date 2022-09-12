//
//  JokesViewModel.swift
//  JokesApp
//
//  Created by YILDIRIM on 12.09.2022.
//

import Foundation
import Alamofire

class JokesViewModel: ObservableObject {
    
   @Published var jokes = [Value]()
    
    init() {
        getJokes()
    }
    
    func getJokes(count: Int = 6) {
        
        AF.request("http://api.icndb.com/jokes/random/\(count)",method: .get).responseDecodable(of:Welcome.self) { reponse in
            
            switch reponse.result {
                
            case .success(let data):
                
                let value = data.value
                self.jokes += value
                
            case .failure(let error):
                print("Error while api request\(error)")
            }
            
        }
    }
    
}
