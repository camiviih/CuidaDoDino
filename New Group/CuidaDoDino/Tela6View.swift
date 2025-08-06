//
//  Tela6View.swift
//  CuidaDoDino
//
//  Created by Camili Moreira on 30/07/25.
//

import SwiftUI

struct Tela6View: View {
    var body: some View {
        
            
            VStack (spacing: 32){
                    Spacer()
                    Image("DinoTela6")
                        .resizable()
                        .frame(width: 300, height: 297)
                VStack {
                    Text("Depois de comer, o dino dá um loooongo bocejo. Parece estar com sono…O que você faz?")
                        .font(.system(size: 16, weight: .regular))
                    
                    NavigationLink {
                        GameOverGenerica(imagem: "DinoDevora", texto: "O dino te engoliu todinho! As patinhas mal alcançam a pia. Você realmente quer forçar um dinossauro a lavar louça?", titulo: "Game Over")
                        //GameOverDevoradoView()
                    } label: {
                        Text("Impedir a soneca e mandar Dino lavar as louças")
                            .frame(maxWidth: .infinity, minHeight: 48)
                            .padding(.horizontal,8)
                                        
                                        .background(Color("Azul"))
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .regular))
                                        
                                        .cornerRadius(8)
                    }
                    NavigationLink {
                        Tela7View()
                    } label: {
                        Text("Deixar ele tirar um cochilo.")
                            .frame(maxWidth: .infinity, minHeight: 48)
                            .padding(.horizontal,8)
                                        
                                        .background(Color("Azul"))
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .regular))
                                        
                                        .cornerRadius(8)
                    }
                }
                
                .padding(.vertical, 24)
                .padding(.horizontal, 16)
                .background(.black.opacity(0.15))
                .clipShape(.rect(cornerRadius: 20))
                
            }
            .navigationBarBackButtonHidden(true)
            .padding(.horizontal, 16)
            .padding(.bottom, 100)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                )
        }
        
    
}

#Preview {
    Tela6View()
}
