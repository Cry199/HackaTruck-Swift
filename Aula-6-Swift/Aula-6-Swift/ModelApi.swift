//
//  ModelApi.swift
//  Aula-6-Swift
//
//  Created by Student02 on 12/09/23.
//

import Foundation

struct ObjPatos: Decodable, Hashable
{
    var message : String = ""
    var url: String = ""
}
class ViewModel : ObservableObject {
    
    @Published var conteudoTe : ObjPatos?
    
    func fetch()
    {
        guard let url = URL(string: "https://random-d.uk/api/v2/random" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode(ObjPatos.self, from: data)
                
                DispatchQueue.main.async {
                    self?.conteudoTe = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}

