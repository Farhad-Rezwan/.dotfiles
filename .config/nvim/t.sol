// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; // 0.8.12

contract SimpleStorage {
    // basic solidity types: boolean, uint, int, address, bytes
    // string favoriteNumberInText = "Five";
    // bytes32 favoriteBytes = "cat"; // 0xl;aksjsld bytes2,3,4,4
    // bool hasFavoriteNubmer = true;


    // the default visibility is always internal
    uint256 public favoriteNumber; // default number is automatically zero
    People public person = People({favoriteNumber: 2, name: "farhad"});

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber; // dictionary or hash table.

    // struct of people that hold people name and also save favoriteNumber
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    // 0xd9145CCE52D386f254917e481eB44e9943F39138 every contract once deployed has an address.


    // view and pure doesnot cost anything and doesn’t modify the blockchain. It is free unlesss you call from another function
    // pure we can use to do some mathematics
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name)); 
        // can also be done as
        // People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
        // people.push(newPerson)
    }

    // calldata, memory, and storage
    // calldata and memory means exist temporarily in the scope on the ohter hand storage stays even after the function call.
    // calldata cant be modified similarly storage on the other hand memory can’t be modified.+

}



