# Make button Clickable in tableView Cell using Protocol


## Cell design with XIB and interface builder

![startProject](../feature-CreatingProtocol/assets/sketch1.gif) 



Step 1. Create and add protocol  
```swift
protocol CustomCellDelegate {
    func OnClickBtn(iNumber : Int)
}

```
// Step 2. Class B, create a delegate property.  
```swift
  var delegate : CustomCellDelegate?
    var iNumberIndex : Int?
```

Step 3. Add the delegate method call.  
```swift
  @IBAction func OnClick(_ sender: Any) {
        if let index = iNumberIndex{
            delegate?.OnClickBtn(iNumber: index)
        }
        
    }

```

Step 4. Class A conform the protocol.  
```swift
{
...

 // Create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CustomCell
        cell.delegate = self
        cell.iNumberIndex = indexPath.row
        let name : String = arrContainer[indexPath.row]
        cell.strName = name
        
        return cell
        
    }
    
}

//MARK: step 4 conform the protocol here.
extension ViewController : CustomCellDelegate{
    
    func OnClickBtn(iNumber: Int) {
        // seleccionamos el nombre por el indice pasado
        print("you selected \(arrContainer[iNumber])")
    }
    
    
}




```
