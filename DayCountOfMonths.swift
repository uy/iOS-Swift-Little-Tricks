import Foundation

let date = Date()
let calendar = Calendar.current
let components: Set<Calendar.Component> = [
    .year
]

let dateComponents = calendar.dateComponents(components, from: date)

for idx in 1...12 {
    let swapDateComponents = DateComponents(year: dateComponents.year, month: idx, hour: 15)
    let swapDate = calendar.date(from: swapDateComponents)!
    let range = calendar.range(of: .day, in: .month, for: swapDate)
    let numberOfDays = range?.count
    print(numberOfDays)
}
