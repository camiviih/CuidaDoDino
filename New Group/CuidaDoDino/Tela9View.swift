//
//  Tela9View.swift
//  CuidaDoDino
//
//  Created by Camili Moreira on 30/07/25.
//

import SwiftUI

struct Tela9View: View {
    
    var body: some View {
      
            VStack (spacing: 32){
                    Spacer()
                    Image("DinoTela9")
                        .resizable()
                        .frame(width: 300, height: 297)
                
                VStack {
                    Text("Após o banho, Dino fica limpinho e cheiroso, pronto para se entregar a uma nova soneca...Como será que dinossauros conseguem dormir tanto?")
                        .font(.system(size: 16, weight: .regular))
                    
                    NavigationLink {
                        FinalView()
                    } label: {
                        Text("Proximo")
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
            .padding(.bottom, 100)
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
    Tela9View()
}
