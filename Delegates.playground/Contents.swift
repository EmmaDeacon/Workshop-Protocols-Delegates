//: Playground - noun: a place where people can play

import UIKit

//1 - Creates a Protocol
protocol TitleDelegate: class {
    func didChangeTitle(title: String)
}

class TitleOwner {
    var title: String = ""

    //2 - Creates a delegate property
    weak var delegate: TitleDelegate?

    //4 - call the delegate function
    func setNewTitle(title: String) {
        self.title = title
        delegate?.didChangeTitle(title: title)
    }
}

class TitleBillboard:  TitleDelegate {
    //3 - conform to the delegate protocol
    func didChangeTitle(title: String){
        print("The new title is \(title)")
    }
}

var titleBillboard = TitleBillboard()
var titleOwner = TitleOwner()
titleOwner.delegate = titleBillboard

titleOwner.setNewTitle(title: "My new title ")

class AnotherTitleClass: TitleDelegate {
    func didChangeTitle(title: String) {
        print("\(title) is the title in TitleOwner")
    }
}

var anotherTitleClass = AnotherTitleClass()
titleOwner.delegate = anotherTitleClass

titleOwner.setNewTitle(title: "A different title")








