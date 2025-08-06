//
//  InicioView.swift
//  CuidaDoDino
//
//  Created by Camili Moreira on 30/07/25.
//

import SwiftUI

struct InicioView: View {
    var body: some View {
        
       
            ZStack{
                Color("Azul")
                    .ignoresSafeArea()
                VStack (spacing: 40){
                    
        Image("DinoOvo")
                        .resizable()
                        .frame(width: 222, height: 257)
                    
                    
                    VStack (spacing: 32){
                        VStack (alignment: .leading){
                            Text("Você está caminhando pelo bairro...")
                                .font(.system(size: 18, weight:.bold))
                                .foregroundStyle(Color("Azul"))
                            Text("")
                           
                            Text("Algo incomum chama sua atenção: um ovo gigante, diferente de tudo que você já viu. Antes que pudesse entender, a casca se parte e um pequeno dinossauro olha para você. Apesar do susto , sua aparência é tão amigável que você o leva para casa e o batiza de Dino Sauro. Agora, sua missão é clara: cuidar bem dele e evitar que os dinossauros sejam extintos... de novo. Mas cuidado, o prato principal pode ser você!")
                                .font(.system(size: 16, weight:.regular))
                        }
                        
                        
                        NavigationLink {
                            Tela1View()
                        } label: {
                            Text("Proximo")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .foregroundColor(Color("Azul"))
                                
                                .background(Color("AzulClaro"))
                                .cornerRadius(8)
                                .font(.system(size: 20, weight: .bold))
                        }
                    }
                    .padding(.vertical,32)
                    .padding(.horizontal, 16)
                    .background(Color("Bege"))
                    .clipShape(.rect(cornerRadius: 20))
                }
                .padding(.horizontal, 16)
                    
            } .navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    InicioView()
}
