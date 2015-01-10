let tutorialTeam = 60
let editorialTeam = 17
var totalTeam = tutorialTeam + editorialTeam

totalTeam += 1

class TipCalculator{
    let total: Double
    let taxPct: Double
    let subTotal: Double
    
    init(total:Double, taxPct: Double){
        self.total = total
        self.taxPct = taxPct
        
        subTotal = total / (taxPct + 1)
    }
    
    func calcTipWithTipPct(tipPct: Double) -> Double{
        return subTotal * tipPct
    }
    
    func returnPossibleTips() -> [Int: Double] {
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
        // 2
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            // 3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
        
    }
}

let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()



