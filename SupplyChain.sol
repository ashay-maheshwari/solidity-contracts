pragma solidity ^0.4.23;


contract SupplyChainContract {
    
    // Declare the complete structure of the Supply chain system


    string productName;
    string productID;
    string prodcutionDate;
    int temp;
    int humidity;
    string dateOfManufacturing;
    string dateOfExpiration;
    string ownerOfProduct;
    string warehouseId;
    string transportVehicleId;
    string source;
    string destination;
    
    //This is a constuctor and use it to initilize a few required variables or default variables when
    // the smart contract is executed . This would not be needed mostly
    function SupplyChainContract () {
        source = "California";
        destination = "Dallas";
        warehouseId = "WR001";
        
    }
    
    //Function to initiate the initial values of the product supply chain
    function setProduct(string _productname, 
                        string _productId, 
                        string _productionDate, 
                        int _temp,
                        int _humidity
                               
                        ) public {
        
        productName = _productname;
        productID =_productId;
        prodcutionDate = _productionDate;
        temp = _temp;
        humidity = _humidity;
       
    } //End setting up product structure
    
    
    
    function getProduct() public constant returns (string, string, string, int, int){
        return (productName, productID, prodcutionDate, temp,
                humidity);
    } //end return for getProduct 
 
 

}






