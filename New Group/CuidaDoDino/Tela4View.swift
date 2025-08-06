//
//  Tela4View.swift
//  CuidaDoDino
//
//  Created by Camili Moreira on 30/07/25.
//

import SwiftUI

struct Tela4View: View {
    var body: some View {
        
            
            VStack (spacing: 32){
                Spacer()
                Image("DinoTela4")
                    .resizable()
                    .frame(width: 361, height: 162)
                VStack (spacing: 16){
                    Text("Depois de horas largado no sofá, Dino está completamente sedentário. Ele já não consegue mais levantar a cauda. O que você pode fazer para ajudar na saúde dele?")
                        .font(.system(size: 16, weight: .regular))
                    
                    NavigationLink {
                        GameOverGenerica(imagem: "DinoDevora", texto: "O Dino te engoliu todinho!  Dinossauros tem mãos pequenas para jogar tênis, Dino ficou ofendido!", titulo: "Game Over")
                        //GameOverDevoradoView()
                    } label: {
                        Text("Fale para ele praticar tênis de mesa")
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
                        Text("Vá correr com dino no parque")
                            .frame(maxWidth: .infinity, minHeight: 48)
                            .padding(.horizontal,8)
                                        
                                        .background(Color("Azul"))
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .regular))
                                        
                                        .cornerRadius(8)
                    }
                    NavigationLink {
                        Tela5View()
                    } label: {
                        Text("Brinque de Pega-pega com o dino ")
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
    Tela4View()
}
