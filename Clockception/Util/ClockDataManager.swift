//
//  ClockDataManager.swift
//  Clock
//
//  Created by Alok on 09/02/22.
//

import Foundation

typealias TimeHHMM = (hour:Int,min:Int)

/**
 Manager class for handling all the operations and data related to ClockMatrix
 */
class ClockDataManager {
    static let shared = ClockDataManager()
    
    private init(){
    }
    
    func getClockDataForZeroDigit(item:ClockData,startClockIndex:(row:Int,col:Int)) -> ClockData{
        var updatedValue = item
        if item.matrixIndex.row >= startClockIndex.row && item.matrixIndex.row <= startClockIndex.row + 4 &&
            item.matrixIndex.col >= startClockIndex.col && item.matrixIndex.col <= startClockIndex.col + 2
        {
            updatedValue.isShowingTime = true
            switch item.matrixIndex {
                //col 2
            case (startClockIndex.row,startClockIndex.col):
                updatedValue.time = (6,15)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+1):
                
                updatedValue.time = (9,15)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+2):
               
                updatedValue.time = (9,30)
                return updatedValue
            case (startClockIndex.row+1,startClockIndex.col+2),(startClockIndex.row+2,startClockIndex.col+2),(startClockIndex.row+3,startClockIndex.col+2):
                
                updatedValue.time = (6,0)
                return updatedValue
            case (startClockIndex.row+1,startClockIndex.col),(startClockIndex.row+2,startClockIndex.col),(startClockIndex.row+3,startClockIndex.col):
               
                updatedValue.time = (6,0)
                return updatedValue
            case (startClockIndex.row+4,startClockIndex.col):
               
                updatedValue.time = (3,0)
                return updatedValue
            case (startClockIndex.row+4,startClockIndex.col+1):
                updatedValue.time = (3,45)
                return updatedValue
            case (startClockIndex.row+4,startClockIndex.col+2):
               
                updatedValue.time = (9,0)
                return updatedValue
            default :
                updatedValue.time = (2,10)
                return updatedValue
            }
        } else if !item.isShowingTime{
            updatedValue.time = (2,10)
        }
        return updatedValue
        
    }
    func getClockDataForOne(item:ClockData,startClockIndex:(row:Int,col:Int)) -> ClockData{
        var updatedValue = item
        if item.matrixIndex.row >= startClockIndex.row && item.matrixIndex.row <= startClockIndex.row + 4 &&
            item.matrixIndex.col >= startClockIndex.col && item.matrixIndex.col <= startClockIndex.col + 2
        {
            updatedValue.isShowingTime = true
            switch item.matrixIndex {
                //col 2
            case (startClockIndex.row+1,startClockIndex.col+1),(startClockIndex.row+2,startClockIndex.col+1),(startClockIndex.row+3,startClockIndex.col+1):
               
                updatedValue.time = (6,0)
                return updatedValue
                
            case (startClockIndex.row,startClockIndex.col+1):
               
                updatedValue.time = (6,30)
                return updatedValue
                
            
            case (startClockIndex.row+4,startClockIndex.col+1):
              
                updatedValue.time = (0,0)
                return updatedValue
            default :
                updatedValue.time = (2,10)
                return updatedValue
            }
        } else if !item.isShowingTime{
            updatedValue.time = (2,10)
        }
        return updatedValue
    }
    
    func getClockDataForTwo(item:ClockData,startClockIndex:(row:Int,col:Int)) -> ClockData{
        var updatedValue = item
        if item.matrixIndex.row >= startClockIndex.row && item.matrixIndex.row <= startClockIndex.row + 4 &&
            item.matrixIndex.col >= startClockIndex.col && item.matrixIndex.col <= startClockIndex.col + 2
        {
            updatedValue.isShowingTime = true
            switch item.matrixIndex {
                //col 2
            case (startClockIndex.row,startClockIndex.col):
             
                updatedValue.time = (3,15)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+1):
                
                updatedValue.time = (9,15)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+2):
               
                updatedValue.time = (6,45)
            case (startClockIndex.row+1,startClockIndex.col+2):
                
                updatedValue.time = (6,0)
            case (startClockIndex.row+2,startClockIndex.col):
               
                updatedValue.time = (6,15)
            case (startClockIndex.row+2,startClockIndex.col+1):
              
                updatedValue.time = (9,15)
            case (startClockIndex.row+2,startClockIndex.col+2):
               
                updatedValue.time = (9,0)
            case (startClockIndex.row+3,startClockIndex.col):
                updatedValue.time = (6,0)
            case (startClockIndex.row+4,startClockIndex.col):
                updatedValue.time = (3,0)
            case (startClockIndex.row+4,startClockIndex.col+1):
                updatedValue.time = (9,15)
            case (startClockIndex.row+4,startClockIndex.col+2):
                updatedValue.time = (9,45)
            default :
                updatedValue.time = (2,10)
                return updatedValue
            }
        } else if !item.isShowingTime{
            updatedValue.time = (2,10)
        }
        return updatedValue
    }
    
    
    
    
    func getClockDataForThree(item:ClockData,startClockIndex:(row:Int,col:Int)) -> ClockData{
        var updatedValue = item
        if item.matrixIndex.row >= startClockIndex.row && item.matrixIndex.row <= startClockIndex.row + 4 &&
            item.matrixIndex.col >= startClockIndex.col && item.matrixIndex.col <= startClockIndex.col + 2
        {
            updatedValue.isShowingTime = true
            switch item.matrixIndex {
                //col 2
            case (startClockIndex.row,startClockIndex.col):
              
                updatedValue.time = (3,15)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+1):
              
                updatedValue.time = (9,15)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+2):
               
                updatedValue.time = (6,45)
            case (startClockIndex.row+1,startClockIndex.col+2):
              
                updatedValue.time = (6,0)
            case (startClockIndex.row+2,startClockIndex.col):
               
                updatedValue.time = (3,15)
            case (startClockIndex.row+2,startClockIndex.col+1):
              
                updatedValue.time = (9,15)
            case (startClockIndex.row+2,startClockIndex.col+2):
                
                updatedValue.time = (6,0)
            case (startClockIndex.row+3,startClockIndex.col+2):
                updatedValue.time = (6,0)
            case (startClockIndex.row+4,startClockIndex.col):
                updatedValue.time = (3,15)
            case (startClockIndex.row+4,startClockIndex.col+1):
                updatedValue.time = (9,15)
            case (startClockIndex.row+4,startClockIndex.col+2):
                updatedValue.time = (9,0)
            default :
                updatedValue.time = (2,10)
                return updatedValue
            }
        } else if !item.isShowingTime{
            updatedValue.time = (2,10)
        }
        return updatedValue
    }
    
    func getClockDataForFour(item:ClockData,startClockIndex:(row:Int,col:Int)) -> ClockData{
        var updatedValue = item
        if item.matrixIndex.row >= startClockIndex.row && item.matrixIndex.row <= startClockIndex.row + 4 &&
            item.matrixIndex.col >= startClockIndex.col && item.matrixIndex.col <= startClockIndex.col + 2
        {
            updatedValue.isShowingTime = true
            switch item.matrixIndex {
                //col 2
            case (startClockIndex.row,startClockIndex.col):
               
                updatedValue.time = (6,30)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+2):
               
                updatedValue.time = (6,30)
            case (startClockIndex.row+1,startClockIndex.col):
               
                updatedValue.time = (6,0)
            case (startClockIndex.row+1,startClockIndex.col+2):
                
                updatedValue.time = (6,0)
            case (startClockIndex.row+2,startClockIndex.col):
                
                updatedValue.time = (3,0)
            case (startClockIndex.row+2,startClockIndex.col+1):
               
                updatedValue.time = (9,15)
            case (startClockIndex.row+2,startClockIndex.col+2):
                
                updatedValue.time = (6,0)
           
            case (startClockIndex.row+3,startClockIndex.col+2):
                updatedValue.time = (6,0)
            
            case (startClockIndex.row+4,startClockIndex.col+2):
                updatedValue.time = (12,00)
            default :
                updatedValue.time = (2,10)
                return updatedValue
            }
        } else if !item.isShowingTime{
            updatedValue.time = (2,10)
        }
        return updatedValue
    }
    
    func getClockDataForFive(item:ClockData,startClockIndex:(row:Int,col:Int)) -> ClockData{
        var updatedValue = item
        if item.matrixIndex.row >= startClockIndex.row && item.matrixIndex.row <= startClockIndex.row + 4 &&
            item.matrixIndex.col >= startClockIndex.col && item.matrixIndex.col <= startClockIndex.col + 2
        {
            updatedValue.isShowingTime = true
            switch item.matrixIndex {
                //col 2
            case (startClockIndex.row,startClockIndex.col):
              
                updatedValue.time = (6,15)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+1):
            
                updatedValue.time = (9,15)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+2):
             
                updatedValue.time = (9,45)
                
            case (startClockIndex.row+1,startClockIndex.col):
               
                updatedValue.time = (6,0)
                
                
            case (startClockIndex.row+2,startClockIndex.col):
              
                updatedValue.time = (3,00)
            case (startClockIndex.row+2,startClockIndex.col+1):
               
                updatedValue.time = (9,15)
            case (startClockIndex.row+2,startClockIndex.col+2):
               
                updatedValue.time = (6,45)
                
            case (startClockIndex.row+3,startClockIndex.col+2):
                updatedValue.time = (6,0)
            case (startClockIndex.row+4,startClockIndex.col):
                updatedValue.time = (3,15)
            case (startClockIndex.row+4,startClockIndex.col+1):
                updatedValue.time = (9,15)
            case (startClockIndex.row+4,startClockIndex.col+2):
                updatedValue.time = (9,00)
            default :
                updatedValue.time = (2,10)
                return updatedValue
            }
        } else if !item.isShowingTime{
            updatedValue.time = (2,10)
        }
        return updatedValue
    }
    
    func getClockDataForSix(item:ClockData,startClockIndex:(row:Int,col:Int)) -> ClockData{
        var updatedValue = item
        if item.matrixIndex.row >= startClockIndex.row && item.matrixIndex.row <= startClockIndex.row + 4 &&
            item.matrixIndex.col >= startClockIndex.col && item.matrixIndex.col <= startClockIndex.col + 2
        {
            updatedValue.isShowingTime = true
            switch item.matrixIndex {
                //col 2
            case (startClockIndex.row,startClockIndex.col):
              
                updatedValue.time = (3,30)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+1):
             
                updatedValue.time = (9,15)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+2):
              
                updatedValue.time = (9,45)
            case (startClockIndex.row+1,startClockIndex.col):
               
                updatedValue.time = (6,0)
            case (startClockIndex.row+2,startClockIndex.col):
        
                updatedValue.time = (6,0)
            case (startClockIndex.row+2,startClockIndex.col+1):
                
                updatedValue.time = (9,15)
            case (startClockIndex.row+2,startClockIndex.col+2):
               
                updatedValue.time = (6,45)
            case (startClockIndex.row+3,startClockIndex.col):
              
                updatedValue.time = (6,0)
            case (startClockIndex.row+3,startClockIndex.col+2):
                updatedValue.time = (6,0)
            case (startClockIndex.row+4,startClockIndex.col):
                updatedValue.time = (3,0)
            case (startClockIndex.row+4,startClockIndex.col+1):
                updatedValue.time = (9,15)
            case (startClockIndex.row+4,startClockIndex.col+2):
                updatedValue.time = (9,00)
            default :
                updatedValue.time = (2,10)
                return updatedValue
            }
        } else if !item.isShowingTime{
            updatedValue.time = (2,10)
        }
        return updatedValue
    }
    
    
    func getClockDataForSeven(item:ClockData,startClockIndex:(row:Int,col:Int)) -> ClockData{
        var updatedValue = item
        if item.matrixIndex.row >= startClockIndex.row && item.matrixIndex.row <= startClockIndex.row + 4 &&
            item.matrixIndex.col >= startClockIndex.col && item.matrixIndex.col <= startClockIndex.col + 2
        {
            updatedValue.isShowingTime = true
            switch item.matrixIndex {
                //col 2
            case (startClockIndex.row,startClockIndex.col):
              
                updatedValue.time = (3,15)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+1):
             
                updatedValue.time = (9,15)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+2):
               
                updatedValue.time = (6,45)
        
            case (startClockIndex.row+1,startClockIndex.col+2):
               
                updatedValue.time = (6,00)
                
            case (startClockIndex.row+2,startClockIndex.col+2):
             
                updatedValue.time = (6,00)
                
       
            case (startClockIndex.row+3,startClockIndex.col+2):
               
                updatedValue.time = (6,0)
           
            
            case (startClockIndex.row+4,startClockIndex.col+2):
                updatedValue.time = (12,00)
            default :
                updatedValue.time = (2,10)
                return updatedValue
            }
        } else if !item.isShowingTime{
            updatedValue.time = (2,10)
        }
        return updatedValue
    }
    
    func getClockDataForEight(item:ClockData,startClockIndex:(row:Int,col:Int)) -> ClockData{
        var updatedValue = item
        if item.matrixIndex.row >= startClockIndex.row && item.matrixIndex.row <= startClockIndex.row + 4 &&
            item.matrixIndex.col >= startClockIndex.col && item.matrixIndex.col <= startClockIndex.col + 2
        {
            updatedValue.isShowingTime = true
            switch item.matrixIndex {
                //col 2
            case (startClockIndex.row,startClockIndex.col):
               
                updatedValue.time = (3,30)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+1):
               
                updatedValue.time = (9,15)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+2):
                
                updatedValue.time = (6,45)
            case (startClockIndex.row+1,startClockIndex.col):
                
                updatedValue.time = (6,0)
            case (startClockIndex.row+1,startClockIndex.col+2):
                
                updatedValue.time = (6,0)
            case (startClockIndex.row+2,startClockIndex.col):
               
                updatedValue.time = (6,0)
            case (startClockIndex.row+2,startClockIndex.col+1):
                
                updatedValue.time = (9,15)
            case (startClockIndex.row+2,startClockIndex.col+2):
               
                updatedValue.time = (6,0)
            case (startClockIndex.row+3,startClockIndex.col):
                
                updatedValue.time = (6,0)
            case (startClockIndex.row+3,startClockIndex.col+2):
                updatedValue.time = (6,0)
            case (startClockIndex.row+4,startClockIndex.col):
                updatedValue.time = (3,0)
            case (startClockIndex.row+4,startClockIndex.col+1):
                updatedValue.time = (9,15)
            case (startClockIndex.row+4,startClockIndex.col+2):
                updatedValue.time = (9,00)
            default :
                updatedValue.time = (2,10)
                return updatedValue
            }
        } else if !item.isShowingTime{
            updatedValue.time = (2,10)
        }
        return updatedValue
    }
    
    func getClockDataForNine(item:ClockData,startClockIndex:(row:Int,col:Int)) -> ClockData{
        var updatedValue = item
        if item.matrixIndex.row >= startClockIndex.row && item.matrixIndex.row <= startClockIndex.row + 4 &&
            item.matrixIndex.col >= startClockIndex.col && item.matrixIndex.col <= startClockIndex.col + 2
        {
            updatedValue.isShowingTime = true
            switch item.matrixIndex {
                //col 2
            case (startClockIndex.row,startClockIndex.col):
                
                updatedValue.time = (3,30)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+1):
               
                updatedValue.time = (9,15)
                return updatedValue
            case (startClockIndex.row,startClockIndex.col+2):
               
                updatedValue.time = (6,45)
            case (startClockIndex.row+1,startClockIndex.col):
                
                updatedValue.time = (6,0)
            case (startClockIndex.row+1,startClockIndex.col+2):
              
                updatedValue.time = (6,0)
           
           
            case (startClockIndex.row+2,startClockIndex.col):
               
                updatedValue.time = (3,0)
            case (startClockIndex.row+2,startClockIndex.col+1):
                
                updatedValue.time = (9,45)
            case (startClockIndex.row+2,startClockIndex.col+2):
                
                updatedValue.time = (6,0)
 
            case (startClockIndex.row+3,startClockIndex.col+2):
                updatedValue.time = (6,0)
            case (startClockIndex.row+4,startClockIndex.col):
                updatedValue.time = (3,15)
            case (startClockIndex.row+4,startClockIndex.col+1):
                updatedValue.time = (9,15)
            case (startClockIndex.row+4,startClockIndex.col+2):
                updatedValue.time = (9,00)
            default :
                updatedValue.time = (2,10)
                return updatedValue
            }
        } else if !item.isShowingTime{
            updatedValue.time = (2,10)
        }
        return updatedValue
    }
    
    func getClockDataForDigit(digit:Int,item:ClockData,startClockIndex:(row:Int,col:Int))  -> ClockData{
        
        switch digit {
        case 0:
         return  getClockDataForZeroDigit(item: item, startClockIndex: startClockIndex)
        case 1:
            return getClockDataForOne(item: item, startClockIndex: startClockIndex)
        case 2:
            return getClockDataForTwo(item: item, startClockIndex: startClockIndex)
        case 3:
            return getClockDataForThree(item: item, startClockIndex: startClockIndex)
        case 4:
            return getClockDataForFour(item: item, startClockIndex: startClockIndex)
        case 5:
            return getClockDataForFive(item: item, startClockIndex: startClockIndex)
        case 6:
            return getClockDataForSix(item: item, startClockIndex: startClockIndex)
        case 8:
            return getClockDataForEight(item: item, startClockIndex: startClockIndex)
        case 7:
            return getClockDataForSeven(item: item, startClockIndex: startClockIndex)
        case 9:
            return getClockDataForNine(item: item, startClockIndex: startClockIndex)
            
            
        default:
            return getClockDataForZeroDigit(item: item, startClockIndex: startClockIndex)
        }
        
    }
    
    func getClockMatrixDataForDigit(digt:Int,data:[[ClockData]],startClockIndex:(row:Int,col:Int))  -> [[ClockData]]{
        
        let digitMatrix:[[ClockData]] = data.map {
            var tempArray :[ClockData] = []
            for item in $0 {
                tempArray.append( getClockDataForDigit(digit: digt, item: item, startClockIndex: startClockIndex))
            }
            return tempArray
        }
        return digitMatrix
    }
    
    func getMirrorTimeOf(time:TimeHHMM)->TimeHHMM{
        let hourDiff = time.hour > 12 ? 24 - time.hour : 12 - time.hour
        let minuteDiff = time.min == 0 ?  0 :(60-time.min)
        return(hourDiff,minuteDiff)
    }
    
}
