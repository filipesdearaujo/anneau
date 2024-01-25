//
//  CalculatePointToMm.swift
//  Anneau
//
//  Created by Filipe Simões on 24/01/24.
//
// 72 points = 25.4 mm = 1Pol
// So 1 mm  = 72/25.4 pt = 2,83pt
// https://forums.developer.apple.com/forums/thread/669276

import UIKit

struct CalculatePointToMm {
    
    let ringSize: [Int: CGFloat] = [
        1: 12.45,
        2: 13.26,
        3: 13.67,
        4: 14.07,
        5: 14.27,
        6: 14.68,
        7: 14.88,
        8: 15.29,
        9: 15.70,
        10: 16.10,
        11: 16.51,
        12: 16.71,
        13: 16.92,
        14: 17.32,
        15: 17.73,
        16: 18.14,
        17: 18.54,
        18: 18.95,
        19: 19.35,
        20: 19.76,
        21: 19.96,
        22: 20.17,
        23: 20.57,
        24: 20.98,
        25: 21.39,
        26: 21.79,
        27: 22.20
    ]
    
    func calcularValorParaChave(key: CGFloat) -> CGFloat? {
                if let valor = ringSize[Int(key)] {
                    return CGFloat(valor * 2.83)
        } else {
            return nil  // Retorna nil se a chave não existir em ringSize
        }
    }

    func updateValorMM(key: CGFloat) -> CGFloat? {
                if let valor = ringSize[Int(key)] {
            return CGFloat(valor)
        } else {
            return nil  // Retorna nil se a chave não existir em ringSize
        }
    }
}
