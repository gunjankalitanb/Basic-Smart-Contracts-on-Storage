// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;  //version

import{SimpleStorage} from "./SimpleStorage.sol";


contract StorageFactory{

   SimpleStorage[] public listOfSimpleStorageContract;  //Left one is Type and the right one is variable

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContract.push(newSimpleStorageContract);

    }

    function sfStore(uint256 _simpleStorageIndex, uint _newSimpleStorageNumber) public {
         SimpleStorage mySimpleStorage = listOfSimpleStorageContract[_simpleStorageIndex];
         mySimpleStorage.store(_newSimpleStorageNumber);
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){

        return listOfSimpleStorageContract[_simpleStorageIndex].retrieve();
    }
}