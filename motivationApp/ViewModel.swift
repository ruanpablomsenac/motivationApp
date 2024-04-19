//
//  ViewModel.swift
//  motivationApp
//
//  Created by Mac m2 on 19/04/24.
//

import Foundation

class ViewModel: ObservableObject{
    
    @Published var chars: [Frases] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/frases") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let parsed = try JSONDecoder().decode([Dados].self, from: data)
                DispatchQueue.main.async{
                    self?.chars = parsed[0].data
            
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
    
}
