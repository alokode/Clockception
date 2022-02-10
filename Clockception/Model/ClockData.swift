//
//  ClockData.swift
//  Clock
//
//  Created by Alok on 09/02/22.
//

import Foundation

struct ClockData :Hashable{
    static func == (lhs: ClockData, rhs: ClockData) -> Bool {
        lhs.matrixIndex == rhs.matrixIndex
    }
    
    var hashValue: Int {0} //TODO: - Need to provide proper value
    var firstAngle:Double{
        get{
          
            return 360.0/12*Double(time.hour)
        }
    }
    var secondAngle:Double {
        get{
           
            return 360.0/60*Double(time.min)
        }
    }
    var matrixIndex :(row:Int,col:Int) = (0,0)
    var time:TimeHHMM = (0,0)
    var isShowingTime:Bool = false
    init(index:(row:Int,col:Int),time:TimeHHMM){
        self.matrixIndex = index
        self.time = time
    }
}
