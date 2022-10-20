//
//  HeathStore.swift
//  Waddle
//
//  Created by Isla Just's Macbook Pro on 2022/10/19.
//

import Foundation
import HealthKit

class HealthStore{
    var healthStore: HKHealthStore?
    
    init(){
        if HKHealthStore.isHealthDataAvailable(){
            healthStore = HKHealthStore()
        }
    }
}
