//
//  main.swift
//  Swift_less
//
//  Created by Denis Klassen on 27.10.2021.
//

import Foundation

enum PassengerCarsModel {
  case vaz
  case uaz
  case gaz
  case zaz
  case tesla
  case mers
  case bmw
}

enum TrunkCarsModel {
  case maz
  case volvo
  case kamaz
  case ural
  case man
  case hansa
}

enum CarEquipment {
  case base
  case comfort
  case lux
  case businessLux
}

enum TypeOfFuel {
  case gas
  case petrol
  case diesel
  case hybrid
  case electric
}

enum CarColor {
  case black
  case white
  case green
  case yellow
  case blue
}

enum EngineState {
  case started
  case stoped
}

enum WindowsState {
  case openned
  case closed
}

enum HeadLightsState {
  case isOn
  case isOff
}

enum CarHeadlights {
  case HeadlightsAreOn
  case HeadlightsAreOff
}

enum CarAction {
  case openWindows
  case closeWindows
  case startEngine
  case stopEngine
  case headlightsTurnOn
  case headlightsTurnOff
}

enum CarTrunkAction {
  case openWindows
  case closeWindows
  case startEngine
  case stopEngine
  case headlightsTurnOn
  case headlightsTurnOff
}

enum Bagage: Float {
  typealias RawValue = Float
  case bisikle = 3.0
  case metallBox = 70.0
  case plastikBox = 20.0
  case sand = 500.0
  case conteiner = 300.0
  case stouns = 700.0
}

struct PassengerCar {
  let model: PassengerCarsModel
  let equipment: CarEquipment
  let color: CarColor
  let bagSize: Float
  var carWeith: Float
  var enginState: EngineState
  var windowsState: WindowsState
  var headLightsState: HeadLightsState
  
  mutating func actionWithCar(action: CarAction){
    switch action{
    case .openWindows:
      self.windowsState = .openned
      print("- Окна открыты")
    case .closeWindows:
      self.windowsState = .closed
      print("- Окна закрыты")
    case .startEngine:
      self.enginState = .started
      print("- Двигатель запущен")
    case .stopEngine:
      self.enginState = .stoped
      print("- Двигатель заглушен")
    case .headlightsTurnOn:
      self.headLightsState = .isOn
      print("- Фары включены")
    case .headlightsTurnOff:
      self.headLightsState = .isOff
      print("- Фары выключены")
    }
  }
   mutating func putThingsInToPassengerCar (bag: Bagage) {
      switch bag {
      case .bisikle:
        if self.bagSize < Bagage.bisikle.rawValue{
          print(model)
          print(" - Размер багажника в \(model) слишком маленький, нужно еще \(Bagage.bisikle.rawValue - bagSize) места")
        } else {
          self.carWeith = carWeith + Bagage.bisikle.rawValue
          print(model)
          print(" - Вес машины состовляет \(carWeith)")
        }
      case .metallBox:
        if self.bagSize < Bagage.metallBox.rawValue{
          print(model)
          print(" - Размер багажника в \(model) слишком маленький, нужно еще \(Bagage.metallBox.rawValue - bagSize) места")
        } else {
          self.carWeith = carWeith + Bagage.metallBox.rawValue
          print(model)
          print(" - Вес машины состовляет \(carWeith)")
        }
      case .plastikBox:
        if self.bagSize < Bagage.plastikBox.rawValue{
          print(model)
          print(" - Размер багажника в \(model) слишком маленький, нужно еще \(Bagage.plastikBox.rawValue - bagSize) места")
        } else {
          self.carWeith = carWeith + Bagage.plastikBox.rawValue
          print(model)
          print(" - Вес машины состовляет \(carWeith)")
        }
      case .sand:
        if self.bagSize < Bagage.sand.rawValue{
          print(model)
          print(" - Размер багажника в \(model) слишком маленький, нужно еще \(Bagage.sand.rawValue - bagSize) места")
        } else {
          self.carWeith = carWeith + Bagage.sand.rawValue
          print(model)
          print(" - Вес машины состовляет \(carWeith)")
        }
      case .conteiner:
        if self.bagSize < Bagage.conteiner.rawValue{
          print(model)
          print(" - Размер багажника в \(model) слишком маленький, нужно еще \(Bagage.conteiner.rawValue - bagSize) места")
        } else {
          self.carWeith = carWeith + Bagage.conteiner.rawValue
          print(model)
          print(" - Вес машины состовляет \(carWeith)")
        }
      case .stouns:
        if self.bagSize < Bagage.stouns.rawValue{
          print(model)
          print(" - Размер багажника в \(model) слишком маленький, нужно еще \(Bagage.stouns.rawValue - bagSize) места")
        } else {
          self.carWeith = carWeith + Bagage.stouns.rawValue
          print(model)
          print(" - Вес машины состовляет \(carWeith)")
        }
      }
    }
  
  func passengerInfo(){
    print("\nАвтомобиль: \(model)\n - Цвет: \(color)\n - Комплектация: \(equipment)")
    print("\n - Статус двигателя: \(enginState)\n - Состояние окон: \(windowsState)\n - Состояние фар: \(headLightsState)\n - Вес машины: \(carWeith)")
  }
}

struct TrunkCar {
  let model: TrunkCarsModel
  let equipment: CarEquipment
  let color: CarColor
  let bagSize: Float
  var trunkWeith: Float
  var enginState: EngineState
  var windowsState: WindowsState
  var headLightsState: HeadLightsState
  
  mutating func actionWithTrunkCar(action: CarTrunkAction){
    switch action{
    case .openWindows:
      self.windowsState = .openned
      print("- Окна открыты")
    case .closeWindows:
      self.windowsState = .closed
      print("- Окна закрыты")
    case .startEngine:
      self.enginState = .started
      print("- Двигатель запущен")
    case .stopEngine:
      self.enginState = .stoped
      print("- Двигатель заглушен")
    case .headlightsTurnOn:
      self.headLightsState = .isOn
      print("- Фары включены")
    case .headlightsTurnOff:
      self.headLightsState = .isOff
      print("- Фары выключены")
   }
  }
  
  mutating func putThingsInToTrunkCar (bag: Bagage) {
    switch bag {
    case .bisikle:
      if self.bagSize < Bagage.bisikle.rawValue{
        print(model)
        print(" - Размер багажника в \(model) слишком маленький, нужно еще \(Bagage.bisikle.rawValue - bagSize) места")
      } else {
        self.trunkWeith = trunkWeith + Bagage.bisikle.rawValue
        print(model)
        print(" - Вес машины состовляет \(trunkWeith)")
      }
    case .metallBox:
      if self.bagSize < Bagage.metallBox.rawValue{
        print(model)
        print(" - Размер багажника в \(model) слишком маленький, нужно еще \(Bagage.metallBox.rawValue - bagSize) места")
      } else {
        self.trunkWeith = trunkWeith + Bagage.metallBox.rawValue
        print(model)
        print(" - Вес машины состовляет \(trunkWeith)")
      }
    case .plastikBox:
      if self.bagSize < Bagage.plastikBox.rawValue{
        print(model)
        print(" - Размер багажника в \(model) слишком маленький, нужно еще \(Bagage.plastikBox.rawValue - bagSize) места")
      } else {
        self.trunkWeith = trunkWeith + Bagage.plastikBox.rawValue
        print(model)
        print(" - Вес машины состовляет \(trunkWeith)")
      }
    case .sand:
      if self.bagSize < Bagage.sand.rawValue{
        print(model)
        print(" - Размер багажника в \(model) слишком маленький, нужно еще \(Bagage.sand.rawValue - bagSize) места")
      } else {
        self.trunkWeith = trunkWeith + Bagage.sand.rawValue
        print(model)
        print(" - Вес машины состовляет \(trunkWeith)")
      }
    case .conteiner:
      if self.bagSize < Bagage.conteiner.rawValue{
        print(model)
        print(" - Размер багажника в \(model) слишком маленький, нужно еще \(Bagage.conteiner.rawValue - bagSize) места")
      } else {
        self.trunkWeith = trunkWeith + Bagage.conteiner.rawValue
        print(model)
        print(" - Вес машины состовляет \(trunkWeith)")
      }
    case .stouns:
      if self.bagSize < Bagage.stouns.rawValue{
        print(model)
        print(" - Размер багажника в \(model) слишком маленький, нужно еще \(Bagage.stouns.rawValue - bagSize) места")
      } else {
        self.trunkWeith = trunkWeith + Bagage.stouns.rawValue
        print(model)
        print(" - Вес машины состовляет \(trunkWeith)")
      }
    }
    
  }
  func trunkInfo(){
    print("\nАвтомобиль: \(model)\n - Цвет: \(color)\n - Комплектация: \(equipment)")
    print("\n - Статус двигателя: \(enginState)\n - Состояние окон: \(windowsState)\n - Состояние фар: \(headLightsState)\n - Вес машины: \(trunkWeith)")
  }
}

var bossCar = PassengerCar(model: .mers, equipment: .businessLux, color: .black, bagSize: 20, carWeith: 2500, enginState: .stoped, windowsState: .closed, headLightsState: .isOff)

var engeneersCar = PassengerCar(model: .bmw, equipment: .comfort, color: .white, bagSize: 35, carWeith: 1900, enginState: .started, windowsState: .openned, headLightsState: .isOn)

var develorysCar = TrunkCar(model: .volvo, equipment: .base, color: .blue, bagSize: 600, trunkWeith: 6000, enginState: .stoped, windowsState: .closed, headLightsState: .isOff)

var trunkTaxisCar = TrunkCar(model: .hansa, equipment: .base, color: .green, bagSize: 1000, trunkWeith: 7000, enginState: .started, windowsState: .openned, headLightsState: .isOn)

bossCar.passengerInfo()
engeneersCar.passengerInfo()

develorysCar.trunkInfo()
trunkTaxisCar.trunkInfo()

print("\n--------Загрузим груз--------\n")

bossCar.putThingsInToPassengerCar(bag: .bisikle)
engeneersCar.putThingsInToPassengerCar(bag: .conteiner)
develorysCar.putThingsInToTrunkCar(bag: .sand)
trunkTaxisCar.putThingsInToTrunkCar(bag: .stouns)

print("----------------------------------------")
print("\nЗапустим все двигателя (если включены - то оставим включенными) и закроем окна (если закрыты - оставим закрытыми)")

switch bossCar.enginState {
case .started:
  print("\n\(bossCar.model)\n!!!Двигатель уже запущен")
case .stoped:
  print("\n\(bossCar.model)")
  bossCar.actionWithCar(action: .startEngine)
}

switch bossCar.windowsState {
case .closed:
  print("!!!Окна и так закрыты")
case .openned:
  bossCar.actionWithCar(action: .closeWindows)
}

switch engeneersCar.enginState {
case .started:
  print("\n\(engeneersCar.model)\n!!!Двигатель уже запущен")
case .stoped:
  print("\n\(engeneersCar.model)")
  engeneersCar.actionWithCar(action: .startEngine)
}

switch engeneersCar.windowsState {
case .closed:
  print("\n\(engeneersCar.model)\n!!!Окна и так закрыты")
case .openned:
  engeneersCar.actionWithCar(action: .closeWindows)
}

switch develorysCar.enginState {
case .started:
  print("\n\(develorysCar.model)\n!!!Двигатель уже запущен")
case .stoped:
  print("\n\(develorysCar.model)")
  develorysCar.actionWithTrunkCar(action: .startEngine)
}

switch develorysCar.windowsState {
case .closed:
  print("!!!Окна и так закрыты")
case .openned:
  develorysCar.actionWithTrunkCar(action: .closeWindows)
}

switch trunkTaxisCar.enginState {
case .started:
  print("\n\(trunkTaxisCar.model)\n!!!Двигатель уже запущен")
case .stoped:
  print("\n\(trunkTaxisCar.model)")
  trunkTaxisCar.actionWithTrunkCar(action: .startEngine)
}

switch trunkTaxisCar.windowsState {
case .closed:
  print("!!!Окна и так закрыты")
case .openned:
  trunkTaxisCar.actionWithTrunkCar(action: .closeWindows)
}

