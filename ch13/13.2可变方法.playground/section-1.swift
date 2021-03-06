//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import Foundation

class Employee {
    var no: Int = 0
    var name: String = ""
    var job: String?
    var salary: Double = 0
    var dept: Department?
}

struct Department {
    var no: Int = 0
    var name: String = ""
    
    var employees: [Employee] = [Employee]()
    //let employees = NSMutableArray()

    mutating func insert(object: AnyObject , index: Int)->() {
    //func insert(object: AnyObject , index: Int)->() {
        let emp = object as! Employee
        employees.insert(emp, at:index)
    }
}

var dept = Department()

var emp1 = Employee()
dept.insert(object: emp1, index: 0)

var emp2 = Employee()
dept.insert(object: emp2, index: 0)

var emp3 = Employee()
dept.insert(object: emp3, index: 0)

print(dept.employees.count)

