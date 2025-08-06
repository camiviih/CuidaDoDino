//
//  FinalView.swift
//  CuidaDoDino
//
//  Created by Camili Moreira on 30/07/25.
//

import SwiftUI

struct FinalView: View {
    var body: some View {
        
            ZStack{
                Color("Azul")
                    .ignoresSafeArea()
                VStack(spacing:144){
                    VStack (spacing:48){
                        
                        Text("Parabéns")
                            .foregroundStyle(Color("Bege"))
                            .font(Font.custom("PottaOne-regular", size: 56))
                        
                        Image("DinoPlay")
                            .resizable()
                            .frame(width: 320, height: 280)
                        
                        Text("Você cuidou de um dinossauro por um dia inteiro e não virou um lanche!")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundStyle(Color("Bege"))
                            .multilineTextAlignment(.center)
                    }
                    NavigationLink {
                        ContentView()
                    } label: {
                        Text("Jogar novamente")
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
    FinalView()
}
