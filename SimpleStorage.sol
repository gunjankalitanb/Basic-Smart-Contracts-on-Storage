// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;  //version

contract SimpleStorage {
  uint myfavoriteNumber; //be default visibility is internal that is even if enter a value at the store function the value won,t be visible, so use PUBLIC 
  
  struct Person{
    uint256 favoriteNumber;
    string name;
  }

    Person[] public listOfPeople;  //person array with name listOfPeople
    mapping ( string => uint256) public  nameToFavouriteNumber;
// above code will give us a button called favoriteNumber which calls the value stored in favoriteNumber
  function store(uint256 _favoriteNumber) 
  public virtual  {
    myfavoriteNumber = _favoriteNumber;
    
  }
  function retrieve() public view returns(uint256){
    return myfavoriteNumber;
  }

  function addPerson(string memory _name, uint256 _favoriteNumber) public virtual {
      
   listOfPeople.push( Person(_favoriteNumber, _name));
   nameToFavouriteNumber[_name] = _favoriteNumber;

  }
}