// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/*contract TimeUnits{
    function exercise()public pure {
        assert(1 minutes== 60 seconds);

        assert(1 hours== 60 minutes);

        assert(1 days== 24 hours);

        assert(1 weeks== 7 days);
    }
}

*/

/*contract PracticeAsserts{

    function testMath()public pure  {
        assert(10 +10 ==20);
        assert(10 * 5==50);
        assert(100/4== 25);
        assert(10 - 3== 7);
    }

    function testUnit()public  pure {
        uint x=100;
        uint y=50;
        assert(x >y);
        assert(x !=y);
        assert(y >=50);
    }

    function testEther()public pure {
        assert(1 ether== 1e18);
        assert(1 minutes== 60 seconds);
        assert(1 hours== 60 minutes);
    }
}
*/
contract LedgerBalance{
    mapping (address => uint)balance; // every address have their own balance 
    function updateBalance(uint neBalance)public {
      balance[msg.sender]=neBalance;  // store balance to that specific address
    }


}

contract Updated {
    LedgerBalance  ledgerbalance= new  LedgerBalance(); //initiallize new variable and equal it to first contract 
// now what jobs done in first contract it will automatically safe in legderbalance variable 


   function updateBalance()public {
    ledgerbalance.updateBalance(30);  //
   }

}