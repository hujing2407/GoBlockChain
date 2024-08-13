pragma solidity 0.4.24;

contract Basic {
    string name; // state var, default: private
    bool public ok = true;
    int256 age;
    enum Gender {
        male,
        female
    }

    uint256 public bal;

    function getBasic() public view returns (string, int256) {
        // function, default: public

        return (name, age);
    }

    function txToContract() public payable {

    }
    
    function getBalance() public {
        bal = address(this).balance;
    }

    address addr = 0xab155223f0370B13B9cEf85ed1b3414FCc7E0a25;

    function transToAddr() public {
        addr.transfer(1* 10 ** 16);
    }

}
