//
//  SearchRequest.swift
//  Weather
//
//  Created by minh duc on 2/18/19.
//  Copyright © 2019 minhduc. All rights reserved.
//

class SearchRequest: BaseRequest {
    required init(keyword: String) {
        let parameters = ["input": keyword,
                          "types": "(regions)",
                          "language": "en,vi",
                          "key": APIKey.googleKey]
        super.init(url: URLs.placeAutoComplete, httpMethod: .get, body: parameters)
    }
}
