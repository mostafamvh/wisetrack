//
//  NetworkHandler.swift
//  WiseTrack
//
//  Created by Mostafa Movahhed on 9/21/1403 AP.
//

import Foundation

import Network

class NetworkHandler {
    
    static func getCurrentNetworkStatus(completion: @escaping (String) -> Void) {
        let monitor = NWPathMonitor()
        let queue = DispatchQueue(label: "NetworkStatusQueue")
        
        monitor.pathUpdateHandler = { path in
            if path.status == .satisfied {
                if path.usesInterfaceType(.wifi) {
                    completion( "Wi-Fi")
                } else if path.usesInterfaceType(.cellular) {
                    completion( "Cellular")
                } else if path.usesInterfaceType(.wiredEthernet) {
                    completion( "Ethernet")
                } else {
                    completion( "Unknown")
                }
            } else {
                completion( "No Connection")
            }
            monitor.cancel()
        }
        
        monitor.start(queue: queue)
    }
    
}
