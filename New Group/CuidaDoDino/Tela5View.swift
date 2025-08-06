//
//  Tela5View.swift
//  CuidaDoDino
//
//  Created by Camili Moreira on 30/07/25.
//

import SwiftUI

struct Tela5View: View {
    var body: some View {
        
            
            VStack (spacing: 32){
                Spacer()
                Image("DinoTela5")
                    .resizable()
                    .frame(width: 300, height: 297)
                VStack (spacing: 16){
                    Text("Hora do almoço! Dino esta morrendo de fome depois da brincadeira! O que você vai servir?")
                        .font(.system(size: 16, weight: .regular))
                    
                    NavigationLink {
                        GameOverGenerica(imagem: "DinoDevora", texto: "O Dino te engoliu todinho! Ele realmente estava com fome…", titulo: "Game Over")
                        //GameOverDevoradoView()
                    } label: {
                        Text("Oferecer uma saladinha fitness")
                            .frame(maxWidth: .infinity, minHeight: 48)
                            .padding(.horizontal,8)
                                        
                            .background(Color("Azul"))
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .regular))
                                        .cornerRadius(8)
                    }
                    NavigationLink {
                        GameOverGenerica(imagem: "DinoMorto", texto: "Oh não! Você matou o Dino! Como você não sabia que dinossauros são alérgicos a cheddar?!", titulo: "Game Over")
                        //GameOverMorteView()
                    } label: {
                        Text("Hambúrguer de costela com fritas ao molho cheddar e bacon fatiado")
                            .frame(maxWidth: .infinity, minHeight: 48)
                            .padding(.horizontal,8)
                                        
                            .background(Color("Azul"))
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .regular))
                                        .cornerRadius(8)
                    }
                    NavigationLink {
                        Tela6View()
                    } label: {
                        Text("Frango em fatias grelhado")
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
            .padding(.bottom, 24)
            
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
    Tela5View()
}
