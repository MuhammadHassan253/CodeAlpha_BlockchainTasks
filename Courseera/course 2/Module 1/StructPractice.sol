// SPDX-License-Identifier: MIT
pragma solidity  0.8.30;

contract BookStore{
    struct Book{
        string title;
        uint price;
        bool avalibal;

    }

    Book []public  books;

    function addBook(string memory _title, uint _price)public {
        books.push(Book(_title, _price, true));

    }

    function getBooks()public  view  returns(Book[] memory){
        return  books;
    }

    function updatePrice(uint _index, uint newPrice)public {
        books[_index].price = newPrice;
    }
    function sellBook(uint Index)public {
         books[Index].avalibal= false;
    }

    function getTotalBooks()public  view returns(uint){
        return books.length;
    } 
}