//
//  DatabaseHelper.swift
//  SwiftfulSwiftUIinPractice
//
//  Created by Nick Sarno on 2/16/24.
//

import Foundation
import SwiftUI

struct DatabaseHelper {
    
    func getProducts() async throws -> [Product] {
        guard let url = URL(string: "https://dummyjson.com/products") else {
            throw URLError(.badURL)
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let products = try JSONDecoder().decode(ProductArray.self, from: data)
        return products.products
    }
    
    
    
    func getUsers() async throws -> [User] {
        //https://dummyjson.com/users (Original)
        //guard let url = URL(string: "https://dummyjson.com/users") else {
        //guard let url = URL(string: "gs://dummyusers/users1.json") else {
        //guard let url = URL(string: "https://drive.google.com/uc?id=18_FEutGe3JSYsDlo9gowPZy06OovCoIe&alt=media") else {  läuft !!!!
        //guard let url = URL(string: "https://drive.google.com/uc?id=1-CvsrAI8fOILdMbcgSJmOlSwUv5tj_ym&alt=media") else {  läuft
        //guard let url = URL(string: "https://drive.google.com/uc?id=1cFpsvNe7HGBECwUFzhY6BWtT8-M1TlfU&alt=media") else {
            guard let url = URL(string: "https://drive.google.com/uc?id=1PJ2r_-TpCkbAeoMIWKYuUaKFg-ZQsgum&alt=media") else {
        
            throw URLError(.badURL)
              
          //  https://drive.google.com/file/d/1PJ2r_-TpCkbAeoMIWKYuUaKFg-ZQsgum/view?usp=sharing
          //  https://drive.google.com/file/d/1PJ2r_-TpCkbAeoMIWKYuUaKFg-ZQsgum/view?usp=sharing
              
            
            //https://drive.google.com/file/d/1-CvsrAI8fOILdMbcgSJmOlSwUv5tj_ym/view?usp=sharing
            //https://drive.google.com/file/d/18_FEutGe3JSYsDlo9gowPZy06OovCoIe/view?usp=sharing
            //18_FEutGe3JSYsDlo9gowPZy06OovCoIe/view?usp=sharing
            //https://drive.google.com/file/d/18_FEutGe3JSYsDlo9gowPZy06OovCoIe/view?usp=sharing
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        
        
        let users = try JSONDecoder().decode(UserArray.self, from: data)
        return users.users
    }
    
}
     
    
 /*   struct DatabaseHelper {
        
        func getUsers() -> [User] {
            let mockUsers: [User] = [
                User(id: 1, firstName: "Jane 1", lastName: "Doe", age: 30, email: "john@email.com", phone: "123456789", username: "johndoe", password: "password123", image: "https://share.icloud.com/photos/08cart68LAhFWU-NKiki5fS5A", height: 1.75, weight: 75.0),
                User(id: 2, firstName: "Jane 2", lastName: "Smith", age: 25, email: "jane@email.com", phone: "987654321", username: "janesmith", password: "qwerty123", image: "https://share.icloud.com/photos/08cart68LAhFWU-NKiki5fS5A", height: 1.68, weight: 60.0),
                User(id: 3, firstName: "Jane 3", lastName: "Smith", age: 25, email: "jane@email.com", phone: "987654321", username: "janesmith", password: "qwerty123", image: "https://share.icloud.com/photos/08cart68LAhFWU-NKiki5fS5A", height: 1.68, weight: 60.0),
                // Weitere Mock-Benutzer hier einfügen
            ]
            
            return mockUsers
        }
        
    }*/

    
    

