//
//  CalculatePointToMm.swift
//  Anneau
//
//  Created by Filipe Simões on 24/01/24.
//
// 72 points = 25.4 mm = 1Pol
// So 1 mm  = 72/25.4 pt = 2,83pt
// https://forums.developer.apple.com/forums/thread/669276
//https://forums.developer.apple.com/forums/thread/688775

import UIKit

struct CalculatePointToMm {
//    let ringSize: [Int: Double] = [
//        1: 39.349, //12,45
//        2: 41.78, //13.26
//        3: 43.01, //13.67
//        4: 44.21, //14.07
//        5: 44.81, //14.27
//        6: 46.04, //14.68
//        7: 46.64, //14.88
//        8: 47.87, //15.29
//        9: 49.09, //15.70
//        10: 50.30, //16.10
//        11: 51.53, //16.51
//        12: 52.13, //16.71
//        13: 52.76, //16.92
//        14: 53.96, //17.32
//        15: 55.19, //17.73
//        16: 56.42, //18.14
//        17: 57.62, //18.54
//        18: 58.84, //18.95
//        19: 60.05, //19.35
//        20: 61.28, //19.76
//        21: 61.88, //19.96
//        22: 62.51, //20.17
//        23: 63.71, //20.57
//        24: 64.94, //20.98
//        25: 66.17, //21.39
//        26: 67.37, //21.79
//        27: 68.6 //22.20
//    ]
  
    let ringSize: [Int: (Double, Double)] = [
        1: (39.349, 12.45),
        2: (41.78, 13.26),
        3: (43.01, 13.67),
        4: (44.21, 14.07),
        5: (44.81, 14.27),
        6: (46.04, 14.68),
        7: (46.64, 14.88),
        8: (47.87, 15.29),
        9: (49.09, 15.70),
        10: (50.30, 16.10),
        11: (51.53, 16.51),
        12: (52.13, 16.71),
        13: (52.76, 16.92),
        14: (53.96, 17.32),
        15: (55.19, 17.73),
        16: (56.42, 18.14),
        17: (57.62, 18.54),
        18: (58.84, 18.95),
        19: (60.05, 19.35),
        20: (61.28, 19.76),
        21: (61.88, 19.96),
        22: (62.51, 20.17),
        23: (63.71, 20.57),
        24: (64.94, 20.98),
        25: (66.17, 21.39),
        26: (67.37, 21.79),
        27: (68.6, 22.20)
    ]
    
    
    func calcularValorParaChave(key: Int) -> CGFloat {
        let valor = ringSize[Int(key)]
        print(valor!)
        return valor!.0 //retorna o valor em points para desenhar o Anel.
    }
    
        func updateValorMM(key: Float) -> Double? {
                    if let valor = ringSize[Int(key)] {
                        return valor.1
            } else {
                return nil  // Retorna nil se a chave não existir em ringSize
            }
        }
    
}
