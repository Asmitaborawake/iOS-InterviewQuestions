import UIKit

func number(umbers: Int ...){
    for i in  umbers{
        print(i)
    }
}


number(umbers: 1)
number(umbers: 2,3)
number(umbers: 2,3,4)


//generic function
//a method which is capble to taking diffrent data types and perform operations it called as generic methid
//e.g


func addint(a: Int , b: Int) -> Int {
    return a + b
}
func adddouble(a: Double , b: Double) -> Double {
    return a + b
}
func addfloat(a: Float , b: Float) -> Float {
    return a + b
}
    
    
addint(a: 4, b: 4)
adddouble(a: 3.45, b: 5.67)

addfloat(a: 3.4, b: 8.9)




func add<T : Numeric>(a: T, b: T) -> T {
    return a + b
}
add(a: 2, b: 4)
add(a: 3.4, b: 3.4)
add(a: 23.4, b: 23.4)

    

//closure
//closure is block of statements wich can be passed as argument to a method . clouser are unnamed function
//syntax : { (inputarg: DataType, inputarg: DataType) -> ReturnType in
// return ReturnType
//}

//e.g additon clouser
let sumclouser : (Int , Int)-> Int = {(a: Int , b: Int) -> Int in
    return a + b
}

let sum = sumclouser(10,20)
print(sum)

//defer
//defer is block of code which gets executed just before compliting the executing of the method.
//e.g.

func defermethod() {
    defer {
        print("defer will execute till defermethod is executed")
       
    }
    print("1")
    print("2")
}

defermethod()


//hiegh order function
//higher order function areused to perform operations on  collections in an optimised way
//there are 5 higher order functions
//1.map , 2.filter , 3.educe, 4.flatmap, 5.compactmap

//1. map :- map functionsis used to perform same operation on all collection items.
let array = [10,20,30,40]
//map
let newarray = array.map { (item) -> Int in
    item * 10
}
print(newarray)
//or
let newway = array.map { $0 * 10 }
print(newway)

//filter :- filter function is used to perform some condition on all collection items and it returns the element only when the condition true
//find even numner in collection
let filterarray = [1,2,3,4,5]
let evennumber = filterarray.filter{ $0 % 2 == 0 }
print(evennumber)

//reduse :-  use reduse to combine all values of collection to single value
let reducearray = [1,2,3,4,5]
let res = reducearray.reduce(0){ $0 + $1 }
print(res)

//flatmap :- flatmap creates a collection from  a collection of collection.
let flatmaparray = [[1,2],[3,4],[5,6]]
let flatnewarray = flatmaparray.flatMap{$0}
print(flatnewarray)

//compactmap :- compct map removes all nil vlaues from collection & return non nill collection
let four : String? = nil
let coll = ["1","2","3", four]
let nonnilcompact = coll.compactMap{ $0 }
print(nonnilcompact)


//Extension:- it is way to add method to existing class without subclassing it

//ARC:- ARC is Automatic Reference counting avilable in iOS to manage the memory of application. ARC is compile time machanism to manage memory of application. ARC keeps track of reference counting of objects. when reference count becomes 0 then ARC release the objects.
//What is retain cycel :- ARC systems fails to release memoryof the objects which are strongly pointing to each other creats a retain cycle.
// how to avoid retain cycle :- make one of the association / reference as weak.
//what is weak? :- weak is a keyword which does not increase refereance count of object when it is shard and pass as argument. weak object must be optionals.
//what is unowned :- unwoned similer to weak but never becomes nil so it should not be an optional, use unwond in clousers when you are sure that objects nevre becomes nil.

//Array vs Set :-
//Array is order collection of similer / dissimiler elements.
//Set is unorder collection of unique elements.
//Array elements are accessed using index.
//Set does not contain any index/ key to access elements.
//Array is bit slower when iterating through collection.
//Set is fater when itreting through collection.
//Use array when order is imp.
//Use set when unorder is imp.

//Tuples vs Dictionery
//Tuples groups multiple values together
//Dictionery is collection of key-value pairs.
//Tuples are use to return multiple values from method.
//Dictionery are use to store key-value pairs.

//what is Fallthrough?
//fallthrough is keyword used in switch statements. if fallthrough exists in sucessfull case it executes the next case irrespective of the case value match.
//e.g
let a = 10
switch a {
case 9:
    print("this is 9")
case 10:
    print("this is 10")
    fallthrough
case 11 :
    print("this is 11")
default:
    print("case does not exist")
}
//o/p this is 10
//    this is 11

//how to call method after some dealy
//DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
//    add(a: 3, b: 4)
//}


//what is singletone :- singletone is object in which we sure only one instence is exist for it in overall application
//e.g
class Database{
    static let shared : Database = Database()
    func save() {
        print("save object")
    }
    func delete() {
        print("delete object")
        
    }
}
Database.shared.save()
Database.shared.delete()

//application life cycle method
//applicationdidfinishlaunchingwithoption()
//applicationwillresignactive()
//applicationdidenterbackground()
//applicationwillenterforeground()
//applicationdidbecomeactive()
//apploicationwillterminate()

//application states
//Notrunning state :- app just installed or killed
//inactiove state:- app is in foreground but not receving event e.g.when receivng sms or call
//active state:-app is in foreground and receiving event.
//background state:- app is in background and excuting code
//suspened state:-app is in backgroud and not executing code

//view controller life cycle
//loadview()
//viewdidload()
//viewwillappear()
//viewdidiappear()
//viewwilldisappear()
//viewdiddisappear()

//viewdidload call only once view is loaded

//what is hierarchy of uibutton
//NSObject-UIResponder-UIView-UIController-UIButton

//what is root class - NSObject
//we customise view by subclassing uiview class.
