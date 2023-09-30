

import Foundation

struct Topic  : Decodable, Hashable {
  let nome: String?
  let desc: String?
}

struct ListItem  : Decodable, Hashable{
  let _id: String?
  let _rev: String?
  let List: String?
  let topic: [Topic]?
}


class ViewModel1 : ObservableObject {
    
    @Published var conteudo1 : [ListItem] = []
    
    func fetch()
    {
        guard let url = URL(string: "http://192.168.128.201:1880/SaveMoneyGet" ) else{
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
