//
//  ClockView.swift
//  Clock
//
//  Created by Alok on 09/02/22.
//

import SwiftUI

struct ClockView: View {
    var clockColor:Color
    var needleColor:Color
    var clockData:ClockData
    var body: some View {
        ZStack {
            Circle().foregroundColor(clockColor.opacity(0.8)).frame(width: 50, height: 50,alignment: .leading)
            
            Rectangle().frame(width: 4, height: 25, alignment: .center).foregroundColor(needleColor).offset(x: 0, y: -12.5).rotationEffect(.degrees( clockData.firstAngle))
            
            Rectangle().frame(width: 4, height: 25, alignment: .center).foregroundColor(needleColor).offset(x: 0, y: -12.5)
                .rotationEffect(.degrees( clockData.secondAngle))
        }
    }
}
