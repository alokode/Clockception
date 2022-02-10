//
//  ClockViewModel.swift
//  Clock
//
//  Created by Alok on 09/02/22.
//

import Foundation
import QuartzCore


enum Effects {
    case showTime
    case smallSquares
    case crossEffects
    case randomTimeMirrorEffect
}
class ClockViewModel : ObservableObject {
    var timeDigitDispalyStartRowIndex :(row:Int,col:Int) = (5,1)
    @Published var clockDataMatrix:[[ClockData]] = [[]]
    @Published var effectIndex = 0
    var effectsArray : [Effects] = [.smallSquares,.crossEffects,.randomTimeMirrorEffect,.showTime]
    var data : [ClockData]{
        get {
            
            return clockDataMatrix.flatMap{ $0 }
        }
    }

    
    func initliseClockDataMatrix(){
        clockDataMatrix = custructInitilalClockDataMatrix()
    }
    
    func clockDataForDigit(digit:Int,clockData:ClockData) -> ClockData{
        return ClockDataManager.shared.getClockDataForOne(item: clockData, startClockIndex: timeDigitDispalyStartRowIndex)
        //return ClockDataManager.shared.getClockDataForZeroDigit(item: clockData, startClockIndex: timeDigitDispalyStartRowIndex)
        //return ClockDataManager.shared.getClockDataForZeroDigit(item: clockData, startClockIndex: timeDigitDispalyStartRowIndex)
    }
    
    
    func showTime(){
       
        let date = Date()
        let calender = Calendar.init(identifier: .gregorian)
        let component = calender.dateComponents([.hour,.minute], from: date)
        var firstDigit = 0
        var secondDigit = 0
        var thirdDigit = 0
        var fourthDigit  = 0
        
        if component.hour ?? 0 < 10 {
            secondDigit = component.hour ?? 0
        } else {
            firstDigit =  (component.hour ?? 0) / 10
            secondDigit = (component.hour ?? 0) % 10
        }
        if component.minute ?? 0 < 10 {
            fourthDigit = component.minute ?? 0
        } else {
            thirdDigit =  (component.minute ?? 0) / 10
            fourthDigit = (component.minute ?? 0) % 10
        }
        
        var dataMatrix = ClockDataManager.shared.getClockMatrixDataForDigit(digt: firstDigit, data: clockDataMatrix, startClockIndex: timeDigitDispalyStartRowIndex)
        
        dataMatrix = ClockDataManager.shared.getClockMatrixDataForDigit(digt: secondDigit, data: dataMatrix, startClockIndex: (timeDigitDispalyStartRowIndex.row,timeDigitDispalyStartRowIndex.col+4))
        
        dataMatrix = ClockDataManager.shared.getClockMatrixDataForDigit(digt:thirdDigit, data: dataMatrix, startClockIndex: (timeDigitDispalyStartRowIndex.row,timeDigitDispalyStartRowIndex.col+9))
        
        dataMatrix = ClockDataManager.shared.getClockMatrixDataForDigit(digt: fourthDigit, data: dataMatrix, startClockIndex: (timeDigitDispalyStartRowIndex.row,timeDigitDispalyStartRowIndex.col+13))
       clockDataMatrix = dataMatrix
    }
    
    
     func custructInitilalClockDataMatrix() -> [[ClockData]]{
        var clockDataMatrix:[[ClockData]] = [[ClockData]()]
         for row in 0..<AppConstants.numCol {
            var rowData = [ClockData]()
            for col in 0..<AppConstants.numRow {
                rowData.append(  ClockData.init(index: (row: row, col: col), time: (hour: 0, min: 0)))
            }
            if row == 0 {
                clockDataMatrix = [rowData]
            } else {
                
                clockDataMatrix.append( rowData)
            }
        }
        return clockDataMatrix
      
    }
    
    func updateEffects(){
        if effectIndex + 1 < effectsArray.count{
            effectIndex += 1
            
        } else {
            effectIndex = 0
        }
        let effect = effectsArray[effectIndex]
        switch effect {
        case .showTime :
            showTime()
        case .smallSquares:
            clockDataMatrixForSmallSquarForm()
        case .crossEffects:
            clockDataMatrixForCrossEffect()
        case .randomTimeMirrorEffect:
            clockDataMatrixForRandomNumberMirrorEffect()
        }
        
    }
    
    
    //TODO: - Need to optimise below code, Specially all the codes for matrix manipulations
    func clockDataMatrixForSmallSquarForm(){
       var clockDataMatrix:[[ClockData]] = [[ClockData]()]
        for row in 0..<AppConstants.numCol {
           var rowData = [ClockData]()
            let rowStartTime:TimeHHMM = (row % 2 == 0) ? (3,30) : (3,00)
           for col in 0..<AppConstants.numRow {
               let colSqureTime = col % 2 == 0 ? rowStartTime  : ClockDataManager.shared.getMirrorTimeOf(time: rowStartTime)
               rowData.append(  ClockData.init(index: (row: row, col: col), time: colSqureTime))
           }
           if row == 0 {
               clockDataMatrix = [rowData]
           } else {
               
               clockDataMatrix.append( rowData)
           }
       }
        self.clockDataMatrix =  clockDataMatrix
        
      
     
   }
    
    func clockDataMatrixForCrossEffect(){
       var clockDataMatrix:[[ClockData]] = [[ClockData]()]
        for row in 0..<AppConstants.numCol {
           var rowData = [ClockData]()
            let rowStartTime:TimeHHMM = (row % 2 == 0) ? (5,55) : ClockDataManager.shared.getMirrorTimeOf(time: (5,55))
           for col in 0..<AppConstants.numRow {
               let colSqureTime = col % 2 == 0 ? rowStartTime  : ClockDataManager.shared.getMirrorTimeOf(time: rowStartTime)
               rowData.append(  ClockData.init(index: (row: row, col: col), time: colSqureTime))
           }
           if row == 0 {
               clockDataMatrix = [rowData]
           } else {
               
               clockDataMatrix.append( rowData)
           }
       }
        self.clockDataMatrix =  clockDataMatrix
    
     
   }
    
    func clockDataMatrixForRandomNumberMirrorEffect(){
        let randomHour = Int.random(in: 0...12)
        let randomMinutes = Int.random(in: 0...59)
       var clockDataMatrix:[[ClockData]] = [[ClockData]()]
        for row in 0..<AppConstants.numCol {
           var rowData = [ClockData]()
           
            let rowStartTime:TimeHHMM = (row % 2 == 0) ? (randomHour,randomMinutes) : ClockDataManager.shared.getMirrorTimeOf(time: (randomHour,randomMinutes))
           for col in 0..<AppConstants.numRow {
               let colSqureTime = col % 2 == 0 ? rowStartTime  : ClockDataManager.shared.getMirrorTimeOf(time: rowStartTime)
               rowData.append(  ClockData.init(index: (row: row, col: col), time: colSqureTime))
           }
           if row == 0 {
               clockDataMatrix = [rowData]
           } else {
               
               clockDataMatrix.append( rowData)
           }
       }
        self.clockDataMatrix =  clockDataMatrix
   }
}
