// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TestContract {
    function getVal() public pure returns(uint) {
        return 23;
    }
    function testRevert() public {
        revert("this is a revert message!!!");
    }
}
contract TryCatchExample {
    TestContract testContract;
    constructor() {
        testContract = new TestContract();
    }
    function tryCatchTest() public view returns(uint, string memory) {
        try testContract.getVal() returns (uint val) {
            return (val, "getVal_Success!!!")
        } catch {
            return (0, "getVal_Failed!!!")
        }
    }

    function tryCatchWithRevert() public returns(string memory) {
        try testContract.testRevert() {
            return "a message!";
        } catch Error (string memory reason) {
            return reason;      //输出错误原因
        } catch {
            return "未知错误!";
        }
    }
}