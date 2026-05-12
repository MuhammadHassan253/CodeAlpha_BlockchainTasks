// SPDX-License-Identifier: MIT
pragma solidity  0.8.30;

/*contract Owner{
    address Owner;

    constructor()public {
       Owner= msg.sender;
    }

    modifier OnlyOwner{
        require(msg.sender== Owner);
        _;
    }

    modifier Cost(uint price){
        require(msg.value == price);
        _;
    }


}

contract Register is Owner{

    mapping  (address =>bool) registeredAdress;

    uint price;

    constructor(uint initialprice){
        price= initialprice;
    }

    function register()public  payable  OnlyOwner Cost(price) {
        registeredAdress[msg.sender]= true;
    }

    function changePrice(uint _price)public OnlyOwner{
        price= _price;
    }
}
*/
contract  Owned {
    address owner;

    constructor (){
        owner=msg.sender;
    }

    modifier  onlyOwner{
        require(msg.sender==owner);
        _;
    }

}

contract Voting is Owned{
    struct Candidate{
        string name;
        uint voteCount;
    }

    Candidate[] public  candidate;

    mapping (address=>bool) public hasVoted;
    bool public votingActive= false;

    modifier  isVotingActive{
        require(votingActive==true);
        _;
    }

    modifier  notVoted{
        require(hasVoted[msg.sender]==false);
        _;
    }

    function startVoting()public onlyOwner{
        votingActive= true;

    }
    function stopVoting()public onlyOwner{
         votingActive=false;
    }
    function addCandidate(string memory name)public  onlyOwner{
        candidate.push(Candidate(name,0));
    }
    function vote(uint index)public isVotingActive notVoted{
        candidate[index].voteCount++;
        hasVoted[msg.sender]=true;
        
    }
    function getWinner()public view returns(string memory){
        string memory winner= candidate[0].name;
        uint highest=candidate[0].voteCount;
        for (uint i=0; i<candidate.length;i++){
            if(candidate[i].voteCount>highest){
                highest=candidate[i].voteCount;
                winner= candidate[i].name;
            }
        }
        return  winner;
    } 

    function getCandidates()public view returns (Candidate []memory){
        return candidate;
    }
}