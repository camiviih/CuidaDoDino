//
//  GameOverGenerica.swift
//  CuidaDoDino
//
//  Created by Camili Moreira on 31/07/25.
//

import SwiftUI

struct GameOverGenerica: View {

    let imagem: String
    let texto: String
    let titulo: String
    
    
    var body: some View {
      
            ZStack{
                Color("Azul")
                    .ignoresSafeArea()
                VStack (spacing: 144){
                    VStack (spacing:48){
                        Text(titulo)
                            .foregroundStyle(Color("Bege"))
                            .font(Font.custom("PottaOne-regular", size: 56))
                        
                        Image(imagem)
                            .resizable()  
                                .scaledToFit()
                                .frame(width: 330)
                                .frame(maxHeight: 276)
                        
                        
                        
                        Text(texto)
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundStyle(Color("Bege"))
                            .multilineTextAlignment(.center)
                    }
                    
                    NavigationLink{
                        ContentView()
                    }label: {
                        Text("Voltar para o início")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .foregroundColor(Color("Azul"))
                            
                            .background(Color("AzulClaro"))
                            .cornerRadius(8)
                            .font(.system(size: 20, weight: .bold))
                    }
                }
                .padding(.bottom, 24)
                .padding(.horizontal, 32)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            }
            .navigationBarBackButtonHidden(true)
            
            
            
            
            
            
        
    }
}

#Preview {
    GameOverGenerica(imagem: "pipipi", texto: "popopo", titulo: "aaa")
}
