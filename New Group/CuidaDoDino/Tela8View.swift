//
//  Tela8View.swift
//  CuidaDoDino
//
//  Created by Camili Moreira on 30/07/25.
//

import SwiftUI

struct Tela8View: View {
    var body: some View {
        
            
            VStack (spacing: 32){
                Spacer()
                Image("DinoTela8")
                    .resizable()
                    .frame(width: 300, height: 297)
                VStack (spacing: 16){
                    Text("No final das contas dinossauros têm um talento nato para o futebol. No fim a brincadeira foi intensa, e o Dino virou praticamente uma criatura do pântano de tanta sujeira. O que fazer?")
                        .font(.system(size: 16, weight: .regular))
                    
                    NavigationLink {
                        GameOverGenerica(imagem: "DinoDevora", texto: "O dino te engoliu todinho! Não sabia que dinossauros odeiam sujeira?!", titulo: "Game Over")
                       // GameOverDevoradoView()
                    } label: {
                        Text("Fingir que não percebeu e deixar ele sujo mesmo")
                            .frame(maxWidth: .infinity, minHeight: 48)
                            .padding(.horizontal,8)
                                        
                                        .background(Color("Azul"))
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .regular))
                                        
                                        .cornerRadius(8)
                    }
                    NavigationLink {
                        Tela9View()
                    } label: {
                        Text("Preparar um banho e ajudar ele a se limpar")
                            .frame(maxWidth: .infinity, minHeight: 48)
                            .padding(.horizontal,8)
                                        
                                        .background(Color("Azul"))
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .regular))
                                        
                                        .cornerRadius(8)
                    }
                    NavigationLink {
                        GameOverGenerica(imagem: "DinoMorto", texto: "Oh não! Você matou o Dino!  Sem saber onde tomar banho, Dino tentou usar o vaso sanitário, puxou a descarga e acabou sendo levado pelo cano... trágico.", titulo: "Game Over")
                       // GameOverMorteView()
                    } label: {
                        Text("Dizer para ele ir se virar e tomar banho sozinho")
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
            .padding(.bottom, 24)
            .padding(.horizontal, 16)
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
    Tela8View()
}
