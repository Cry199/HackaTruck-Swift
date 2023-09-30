//
//  ModelApiComecar1.swift
//  SaveMoney
//
//  Created by Student02 on 26/09/23.
//

import Foundation



struct Topic {
  let name: String?
  let desc: String?
}

struct ListItem  : Decodable{
  let id: String?
  let rev: String?
  let listName: String?
  let topics: [Topic]?
}




class ViewModel1 : ObservableObject {
    
    @Published var conteudo1 : [ListItem] = []
    
    func fetch()
    {
        guard let url = URL(string: "http://127.0.0.1:1880/SaveMoneyGet" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([ListItem].self, from: data)
                
                DispatchQueue.main.async
                {
                    self?.conteudo1 = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
