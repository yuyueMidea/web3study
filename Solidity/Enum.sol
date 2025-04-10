// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Enumtest {
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }
    Status public status;
    function get() public view return (status) {
        return status;
    }
    function set(Status _status) public {
        status = _status;
    }
    function reset() public {
        delete status;
    }
    function cancel() public {
        status = Status.Canceled;
    }
}