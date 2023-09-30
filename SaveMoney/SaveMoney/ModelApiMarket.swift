import Foundation

struct Response: Decodable {
  let warnings: [String]
  let meta: Meta
  let data: [Article]
}

struct Meta: Codable {
  let found: Int
  let returned: Int
  let limit: Int
  let page: Int
}

struct Article: Decodable {

  let uuid: String?
  let title: String?
  let description: String?
  let keywords: String?
  let snippet: String?
  let url: String?
  let image_url: String?
  let language: String?
  let publishedAt: String?
  let source: String?
  
  let entities: [Entity]?
  let similar: [SimilarArticle]?

}

struct Entity: Codable {
  let symbol: String?
  let name: String?
  let exchange: String?
  let exchangeLong: String?
  let country: String?
  let type: String?
  let industry: String?
  let matchScore: Double?
  let sentimentScore: Double?
  let highlights: [Highlight]?
}

struct Highlight: Codable {
  let highlight: String?
  let sentiment: Double?
  let highlightedIn: String?
}


struct SimilarArticle: Codable {
  let uuid: String?
  let title: String?
  let description: String?
  let keywords: String?
  let snippet: String?
  let url: String?
  let imageUrl: String?
  let language: String?
  let publishedAt: String?
  let source: String?
}


class ViewModel : ObservableObject {
    
    @Published var conteudo : [Article] = []
    
    func fetch(){
           guard let url = URL(string: "https://api.marketaux.com/v1/news/all?countries=pt&filter_entities=true&limit=10&published_after=2023-09-28T17:02&api_token=iMBxts8d990Cv0NsySQTTPpAPeryT0ar7TPPeb1k" ) else{
               return
           }
           
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode(Response.self, from: data)
                
                DispatchQueue.main.async {
                    self?.conteudo = parsed.data
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
