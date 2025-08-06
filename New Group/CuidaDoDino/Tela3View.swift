//
//  Tela3View.swift
//  CuidaDoDino
//
//  Created by Camili Moreira on 30/07/25.
//

import SwiftUI

struct Tela3View: View {
    var body: some View {
        
            
            VStack(spacing: 32){
                Spacer()
                Image("DinoTela3")
                    .resizable()
                    .frame(width: 300, height: 297)
                
                VStack (spacing: 16){
                    Text("Uiii, Dino destruiu todos os seus bonecos... mas parece estar feliz! Foi uma destruição muito produtiva!")
                        .font(.system(size: 16, weight: .regular))
                    
                    NavigationLink {
                        Tela5View()
                    } label: {
                        Text("Continuar")
                            .frame(maxWidth: .infinity, minHeight: 48)
                            .padding(.horizontal,8)
                        
                            .background(Color("Azul"))
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .bold))
                        
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
    Tela3View()
}
