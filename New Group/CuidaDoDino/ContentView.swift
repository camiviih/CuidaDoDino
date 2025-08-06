//
//  ContentView.swift
//  CuidaDoDino
//
//  Created by Camili Moreira on 30/07/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color("Azul")
                    
                VStack{
                    VStack (spacing: 104) {
                        Image("Logo")
                            .resizable()
                            .frame(width: 317, height: 191)
                        Image("DinoLogo")
                            .resizable()
                            .frame(width: 232, height: 229)
                          
                        
                        
                        NavigationLink {
                            InicioView()
                        } label: {
                            Text("Iniciar")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .foregroundColor(Color("Azul"))
                                .background(Color("AzulClaro"))
                                .cornerRadius(8)
                        
                                .font(.system(size: 20, weight: .bold))
                            
                            
                            
                            
                            
                        }
                    }
                } .padding(.horizontal,32)
                    .padding(.bottom, 56)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            } .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden(true)
    }
    
}

#Preview {
    ContentView()
}
