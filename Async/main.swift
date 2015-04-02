//
//  main.swift
//  Async
//
//  Created by 程巍巍 on 3/31/15.
//  Copyright (c) 2015 Littocats. All rights reserved.
//

import Foundation

println("Hello, World!")
var flag = false
Async.background { () -> Void in
    println("1")
}
Async.initiated { () -> Void in
    println("2")
    flag = true
}
Async.background { () -> Void in
    println("3")
}
Async.background { () -> Void in
    println("4")
}
Async.initiated { () -> Void in
    println("5")
}

while !flag{
    fgetc(stdin)
}