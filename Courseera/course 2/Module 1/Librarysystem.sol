// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Library{
    string libraryName;

    constructor (string memory _libraryName)public {
        libraryName= _libraryName;
    }

}

contract BookManager is Library{
    string [] public books;
    constructor (string memory _libraryName)Library(_libraryName){
       
    
    }

    function addBook(string memory _books)public {
        books.push(_books);
    }

    function removeBook(uint index)public {
        books[index]=books[books.length-1];
        books.pop();

    }

    function getBooks()public view returns (string [] memory){
        return  books;
    }

    function getTotalBooks()public view returns (uint){
        return  books.length;
    }

    function getLibraryName()public view  returns (string memory){
        return libraryName;
    }

}