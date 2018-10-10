//
//  Series.swift
//  Series
//
//  Created by DAVID ANGULO CORCUERA on 3/10/18.
//  Copyright © 2018 DAVID ANGULO CORCUERA. All rights reserved.
//

import Foundation
class Series{
    var str_name: String!
    var str_image: String!
    var str_summary: String!
    var int_seasons: Int!
    var arr_actors : [Actors]!
    
    init(str_name: String,str_image: String, str_summary: String, int_seasons: Int, arr_actors : [Actors] ){
    self.str_name = str_name
    self.str_image = str_image
    self.str_summary = str_summary
    self.int_seasons = int_seasons
    self.arr_actors = arr_actors
    }
}
