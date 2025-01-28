// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // solidity versions

contract SimpleStorage {
    // this get initialize to 0 if no value given
    uint256 public myFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array
    Person[] public listOfPeople;

    // "something" -> 22221
    mapping(string => uint256) public nameToFavoriteNumber;

    // call data, memory & storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));

        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
