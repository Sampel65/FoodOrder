import SwiftUI

struct Restaurant : Codable, Identifiable {
    let id : String
    let name : String
    let location : String
    let food : String
    let price : String
    let image : String
}


class ResturantViewModel: ObservableObject {
    @Published var restaurants = [Restaurant]()
    
    func loadData() {
        guard let url = URL(string: "restaurant.json") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let decodedData = try decoder.decode([Restaurant].self, from: data)
                    DispatchQueue.main.async {
                        self.restaurants = decodedData
                    }
                } catch {
                    print("Error decoding JSON data: \(error.localizedDescription)")
                }
            }
        }.resume()
    }
}
