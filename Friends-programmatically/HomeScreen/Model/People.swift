//
//  People.swift
//  Friends-programmatically
//
//  Created by Boris Ofon on 11/28/22.
//

import Foundation

struct People {
    
    private var pe = [Person]()
    
    init() {
        var person1 = Person(name: "John", email: "John@gmail.com")
        var person2 = Person(name: "Thomas", email: "Thomas@gmail.com")
        var person3 = Person(name: "Peter", email: "Peter@gmail.com")
        var person4 = Person(name: "kennedy", email: "kennedy@gmail.com")
        var person5 = Person(name: "Micheal", email: "Micheal@gmail.com")
        var person6 = Person(name: "Oga", email: "Oga@gmail.com")
        var person7 = Person(name: "John", email: "John@gmail.com")
        
        pe.append(person1)
        pe.append(person2)
        pe.append(person3)
        pe.append(person4)
        pe.append(person5)
        pe.append(person6)
        pe.append(person7)

    }
    
    func getCount() -> Int {
        return pe.count
    }
    
    func getSomeOne(index: Int) -> Person {
        return pe[index]
    }
    
}
