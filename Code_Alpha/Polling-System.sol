// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PollingSystem {

    struct Poll {
        string title;
        string[] options;
        uint endTime;
        mapping(uint => uint) votes;
        mapping(address => bool) hasVoted;
    }

    Poll public poll;

    function createPoll(
        string memory _title,
        string[] memory _options,
        uint _duration
    ) public {

        poll.title = _title;
        poll.options = _options;
        poll.endTime = block.timestamp + _duration;
    }

    function vote(uint optionIndex) public {

        require(block.timestamp < poll.endTime, "Voting ended");
        require(!poll.hasVoted[msg.sender], "Already voted");

        poll.votes[optionIndex]++;
        poll.hasVoted[msg.sender] = true;
    }

    function getWinner() public view returns(string memory winner){

        require(block.timestamp >= poll.endTime, "Poll still active");

        uint maxVotes = 0;
        uint winnerIndex = 0;

        for(uint i = 0; i < poll.options.length; i++){

            if(poll.votes[i] > maxVotes){
                maxVotes = poll.votes[i];
                winnerIndex = i;
            }
        }

        winner = poll.options[winnerIndex];
    }

}