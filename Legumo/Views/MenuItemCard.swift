//
//  MenuItemCard.swift
//  Legumo
//
//  Created by Luca Dillenburg on 16/11/21.
//

import SwiftUI

struct MenuItemCard: View {
    var name: String
    var imageUrl: String
    var price: String
    
    var body: some View {
        VStack (alignment: .leading,  spacing: 0) {
            Image(uiImage: imageUrl.load())
                .resizable()
                .cornerRadius(30, corners: [.bottomRight])
                .shadow(color: .gray, radius: 1, x: 0, y: 1)
                
            
            VStack (alignment: .leading, spacing: 5) {
                Text(name)

                Text(price)
                    .bold()
                    .foregroundColor(.green)
            }
            .padding(.all, 10)
        }
        .frame(width: 200, height: 250)
        .background(.white)
        .cornerRadius(15)
        .shadow(color: .gray, radius: 10, x: 0, y: 0)
        .padding()
    }
}

struct MenuItemCard_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemCard(name: "Hamburguer de Carne de Soja", imageUrl: "https://img.itdg.com.br/tdg/images/blog/uploads/2019/06/prato-vegetariano-equilibrado.jpg", price: "R$ 22,00")
    }
}
