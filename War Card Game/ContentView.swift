//
//  ContentView.swift
//  War Card Game
//
//  Created by Corey Olson on 7/3/23.
//

import SwiftUI

struct ContentView: View {
   
    @State var playerCard = "card2"
    @State var cpuCard = "card10"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()

                HStack {
                    Spacer()

                    Image(playerCard)
                    Spacer()

                    Image(cpuCard)
                    Spacer()

                }
               
                Spacer()
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                    
                
                Spacer()

                HStack{
                    Spacer()

                    VStack{
                        Text("Player")
                            .font(.headline)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()

                    VStack {
                        Text("CPU")
                            .font(.headline)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                        

                
                }
                .foregroundColor(.white)
                Spacer()

            }
        }
    }
    
    func deal() {
        
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        if playerCardValue > cpuCardValue {
            playerScore += 1
        } else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
