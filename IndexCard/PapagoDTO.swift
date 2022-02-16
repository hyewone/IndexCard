//
//  PapagoDTO.swift
//  IndexCard
//
//  Created by 혜니 on 2022/02/17.
//

import UIKit
import ObjectMapper

class PapagoDTO: Mappable {
    
    var message : Message?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        message <- map["message"]
    }
    
    class Message: Mappable {
        var result : Result?
        
        required init?(map: Map) {
            
        }
        
        func mapping(map: Map) {
            result <- map["result"]
        }
        
        class Result: Mappable{
            var translatedText : String?
            required init?(map: Map) {
                
            }
            
            func mapping(map: Map) {
                translatedText <- map["translatedText"]
            }
        }
    }
}
