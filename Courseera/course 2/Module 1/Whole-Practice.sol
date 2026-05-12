// SPDX-License-Identifier: MIT
pragma solidity  0.8.30;

contract VotingSystem{
    struct Candidate{
        string name;
        uint voteCount;
    }
    Candidate []public  candidates;

    function addCandidate(string memory _name )public {
        candidates.push(Candidate ( _name,0));
    }
    function vote(uint Index)public {
        candidates[Index].voteCount++;
    }
    
    function getCandidates()public  view  returns (Candidate[] memory){
        return  candidates;
    }

    function getWinner()public view returns(string memory){
       string memory winner = candidates[0].name;
         uint highest = candidates[0].voteCount;
          for(uint i=1; i < candidates.length; i++) {
             if(candidates[i].voteCount > highest) {
              highest = candidates[i].voteCount;
              winner  = candidates[i].name;
              }
            }
            return winner;
    }
        function getTotalCandidate()public view returns(uint){
           return  candidates.length;
        } 
 
    
}

