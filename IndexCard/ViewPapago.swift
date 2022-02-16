//
//  ViewPapago.swift
//  IndexCard
//
//  Created by 혜니 on 2022/02/17.
//

import UIKit
import Foundation
import Alamofire
import AlamofireObjectMapper


class ViewPapago: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var url = "https://openapi.naver.com/v1/papago/n2mt"
        var param = ["source":"ko",
                     "target":"en",
                     "text":"니가 가진 것으로 너가 할 수 있는 일을 하라."
        ]
        var header = ["Content-Type":"application/x-www-form-urlencoded; charset=UTF-8",
                      "X-Naver-Client-Id":"d6X3yEDLviOxrrQLxwR0",
                      "X-Naver-Client-Secret":"Q7frqvVpzq"
        ]

//        Alamofire.request(url, method: .post, parameters:param, encoding: URLEncoding.default
//                          , headers: header).responseObject{(response:DataResponse<PapagoDTO>) in
//            var papagoDTO = response.result.value
//            print(papagoDTO?.message?.result?.translatedText)
//        }
    }
}
