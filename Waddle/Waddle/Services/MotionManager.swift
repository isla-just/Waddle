//
//  MotionManager.swift
//  Waddle
//
//  Created by Isla Just's Macbook Pro on 2022/10/13.
//

import SwiftUI
import CoreMotion

//class MotionManager: ObservableObject{
//    //init motion manager
//    let motionManager = CMMotionManager()
//    let pedometerManager = CMPedometer()
//
//    //observable properiesaccess
//    @Published var roll  = 0.0
//    @Published var pitch  = 0.0
//
//    func Init(){
//        motionManager.startDeviceMotionUpdates(to: .main){
//            [weak self] data, error in
//
//            guard let motion = data?.altitude else{return}
//
//            self?.roll = motion.roll
//            self?.pitch = motion.pitch
//        }
//
//        pedometerManager
//    }
//}
