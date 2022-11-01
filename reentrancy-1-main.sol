pragma solidity 0.8.1;

contract ReentrancyBenign {
    uint8 counter = 0;

    function bad0() public {
        // (bool success,) = msg.sender.call("");
        // if (!success) {
        //     revert();
        // }
        uint8 last = counter;
        bad2();
        counter += 1;          counter += 2;
    }

    function bad2() public {
    }
}


contract _MAIN_ {
    ReentrancyBenign testContract;

    constructor () public {
        testContract = new ReentrancyBenign();
        uint8 test = 0;
        if (test > 0) {
            testContract.bad0();
        } else {
            testContract.bad0();
        }
    }
}
