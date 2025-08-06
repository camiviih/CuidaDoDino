//
//  Tela2View.swift
//  CuidaDoDino
//
//  Created by Camili Moreira on 30/07/25.
//

import SwiftUI

struct Tela2View: View {
    var body: some View {
        
            
            VStack (spacing: 32){
                Spacer()
                Image("DinoTela2")
                    .resizable()
                    .frame(width: 300, height: 297)
                
                VStack(spacing: 16) {
                    
                    
                    Text("O Dino olha para o livro, folheia algumas páginas e... não entende nada do que leu. Pela sua cara parece entediado!")
                        .font(.system(size: 16, weight: .regular))
                    
                    
                    NavigationLink {
                        GameOverGenerica(imagem: "DinoDevora", texto: "O Dino te engoliu todinho! É desrespeitoso chamar dinossauros de burros!", titulo: "Game Over")
                    
                        //                  GameOverDevoradoView()
                    } label: {
                        Text("Chamar ele de burro ")
                            .frame(maxWidth: .infinity, minHeight: 48)
                            .padding(.horizontal,8)
                                        
                                        .background(Color("Azul"))
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .regular))
                                        
                                        .cornerRadius(8)
                        
                    }
                    NavigationLink {
                        GameOverGenerica(imagem: "DinoPreso", texto: "O governo achou o Dino! Pelo jeito dinossauros são propriedades do Estado...", titulo: "Game Over")
                        //GameOverGovView()
                    } label: {
                        Text("Levar ele para passear")
                            .frame(maxWidth: .infinity, minHeight: 48)
                            .padding(.horizontal,8)
                                        
                                        .background(Color("Azul"))
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .regular))
                                        
                                        .cornerRadius(8)
                        
                    } 
                    NavigationLink {
                        Tela3View()
                    } label: {
                        Text("Oferecer seus bonecos para ele brincar")
                            .frame(maxWidth: .infinity, minHeight: 48)
                            .padding(.horizontal,8)
                                        
                                        .background(Color("Azul"))
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .regular))
                                        
                                        .cornerRadius(8)
                        
                    } 
                    
                }.padding(.vertical, 24)
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
    Tela2View()
}
