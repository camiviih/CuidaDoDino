//
//  Tela1View.swift
//  CuidaDoDino
//
//  Created by Camili Moreira on 30/07/25.
//

import SwiftUI

struct Tela1View: View {
    var body: some View {
        
           
            VStack (spacing: 32){
                    Spacer()
                    Image("DinoTela1")
                        .resizable()
                        .frame(width: 300, height: 297)
                    
                    VStack (spacing:16) {
                        Text("Você levou o Dino para sua casa. Assim que entrou, ele começou a explorar tudo. Mas agora, parado no meio da sala, ele te encara como se quisesse fazer alguma coisa:")
                            .font(.system(size: 16, weight: .regular))
                        
                        
                        NavigationLink {
                            GameOverGenerica(imagem: "DinoPreso", texto: "O governo achou o Dino! Pelo jeito dinossauros são propriedades do Estado...", titulo: "Game Over")
                            //GameOverGovView()
                        } label: {
                            Text("Levar ele para passear.")
                                .frame(maxWidth: .infinity, minHeight: 48)
                                .padding(.horizontal,8)
                                            
                                .background(Color("Azul"))
                                            .foregroundColor(.white)
                                            .font(.system(size: 16, weight: .regular))
                                            .cornerRadius(8)
                        }
                        NavigationLink {
                            Tela4View()
                        } label: {
                            Text("Deixar ele assistir televisão.")
                                .frame(maxWidth: .infinity, minHeight: 48)
                                .padding(.horizontal,8)
                                            
                                .background(Color("Azul"))
                                            .foregroundColor(.white)
                                            .font(.system(size: 16, weight: .regular))
                                            .cornerRadius(8)
                        }
                        NavigationLink {
                            Tela2View()
                        } label: {
                            Text("Oferecer o livro Crítica da Razão Pura, de Kant.")
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
                        .scaledToFill() //(Faz diferença para quando muda de celular?˜tirar duvida)
                )
            
        }
    }


#Preview {
    Tela1View()
}
