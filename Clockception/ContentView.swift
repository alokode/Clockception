//
//  ContentView.swift
//  Clock
//
//  Created by Alok on 07/02/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ClockViewModel
   
    
    
    var timer = Timer.publish(every:4, on: .main, in: .common).autoconnect() //Timer to ticket every 6 sec
    let columns = Array(repeating: GridItem(.fixed(50),spacing: 0), count: AppConstants.numCol) //[GridItem(.fixed(100)), GridItem(.fixed(150))]
    var needleColor : Color = .white
    var clockColor : Color = .white.opacity(0.1)
    var viewBG : Color = .black
  
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                GeometryReader { geometry in
                    LazyVGrid(columns: columns, alignment:.center, spacing: 0) {
                        ForEach(viewModel.clockDataMatrix.flatMap{ $0 }, id: \.self) { item in
                            ClockView(clockColor: clockColor, needleColor: needleColor, clockData: item)
                        }.frame( alignment: .topLeading).background(viewBG)
                    }.frame( alignment: .leading).background(viewBG)
                }

            }.onReceive(timer) { time in
                
                withAnimation(.linear(duration: 2).delay(2)) {
                    viewModel.updateEffects()
                   
                }
            
            }.onAppear {
                viewModel.clockDataMatrixForSmallSquarForm()
                
            }
        }.frame(minWidth: 800, idealWidth: 800, minHeight: 800, idealHeight: 800) //TODO: - Need To handle window width and height properly.
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ClockViewModel())
    }
}

