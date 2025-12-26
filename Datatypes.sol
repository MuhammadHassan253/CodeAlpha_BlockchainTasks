// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

contract LibraryTracker {
    uint public totalBooks;           // count total books of library 
    string public libraryName;         // store the name of library
    bool public isOpen;                // show the current state of library
    bytes32 public libraryCode;        // code for library 

    // Structure for book with different fields 
    struct Book {
        string title;
        uint price;
        string author;
    }

    Book[] public books;               // Store all books 

    // Constructor to initialize library
    constructor(string memory _libraryName, bytes32 _libraryCode) {
        libraryName = _libraryName;
        libraryCode = _libraryCode;
        isOpen = true;
        totalBooks = 0;
    }

    // Add a new book to the library
    function addBook(string memory _title, uint _price, string memory _author) public {
        Book memory newBook = Book(_title, _price, _author);
        books.push(newBook);
        totalBooks += 1;
    }
    
    // Get details of a book by index
    function getBook(uint _index) public view returns (string memory, uint, string memory) {
        require(_index < totalBooks, "Book does not exist");  // safety check
        Book memory b = books[_index];
        return (b.title, b.price, b.author);
    }

    // Toggle library open/close status
    function toggleLibraryStatus() public {
        isOpen = !isOpen;
    }
}
