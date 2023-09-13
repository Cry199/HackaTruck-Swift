//
//  File.swift
//  aula-7-Swift
//
//  Created by Student02 on 13/09/23.
//

import Foundation


struct MinhaApiObj: Codable, Hashable{
    let _id : String?
    let _rev : String?
    let name : String?
}


class ViewModel : ObservableObject {
    
    @Published var conteudo : [MinhaApiObj] = []
    
    func fetch(){
           guard let url = URL(string: "http://127.0.0.1:1880/Get1" ) else{
               return
           }
           
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([MinhaApiObj].self, from: data)
                
                DispatchQueue.main.async {
                    self?.conteudo = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
