//
//  Tela7View.swift
//  CuidaDoDino
//
//  Created by Camili Moreira on 30/07/25.
//

import SwiftUI

struct Tela7View: View {
    var body: some View {
       
           
            VStack (spacing: 32){
                    Spacer()
                    Image("DinoTela1")
                        .resizable()
                        .frame(width: 300, height: 297)
                VStack {
                    Text("Depois da soneca Dino acordou cheio de energia! O que você propõe para gastar essa energia toda?")
                        .font(.system(size: 16, weight: .regular))
                    
                    NavigationLink {
                        GameOverGenerica(imagem: "DinoMorto", texto: "Oh não! Você matou o Dino! Ele não aguentou tanta inatividade. Sedentarismo mata, não sabia?", titulo: "Game Over")
                        //GameOverMorteView()
                    } label: {
                        Text("Colocar ele para ver TV")
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
                        Text("Levar o Dino para andar de bicicleta no parque")
                            .frame(maxWidth: .infinity, minHeight: 48)
                            .padding(.horizontal,8)
                            
                            
                                        
                            .background(Color("Azul"))
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .regular))
                                        .cornerRadius(8)
                    }
                    NavigationLink {
                        Tela8View()
                    } label: {
                        Text("Entregar uma bola e ver o que ele inventa")
                            
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
    Tela7View()
}
