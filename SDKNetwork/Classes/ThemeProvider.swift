import Foundation

class ThemeProvider {

    public func getTheme(uidFirebase: String, completion: @escaping(Result<[ThemeModel], Error>) -> Void) {

        let urlStr = "\(Constants.urlBase)/uIdFirebase=\(uidFirebase)"
        debugPrint(urlStr)
        
        guard let url = URL(string: urlStr) else { return }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = HTTPRequestMethod.get.rawValue
        
        let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            do {
                if let error {
                    completion(.failure(error))
                }
                if let data  {
                    let dataStr = String(data: data, encoding: .utf8)
                    debugPrint(dataStr as Any)
                    
                    if let jsonData = dataStr?.data(using: .utf8) {
                        if jsonData.isEmpty {
                            completion(.success([ThemeModel]()))
                        } else {
                            let result = try JSONDecoder().decode([ThemeModel].self, from: jsonData)
                            completion(.success(result))
                        }
                    }
                    
                }
            } catch let error as NSError {
                completion(.failure(error))
            }
            
        }
        task.resume()
    }
}

