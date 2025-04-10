// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Loop {
    function loop1 () public {
        for(uint i=0;i<6;i++) {
            if(i==3) {
                continue;
            }
            if(i==5) {
                break;
            }
            // while循环
            uint j=0;
            while(j<4) {
                j++;
            }
        }
    }
    // 累计计数
    function reduceForSum() public pure returns (uint) {
        uint sum=0;
        for(uintx=0;x<6;x++) {
            sum +=x;
        }
        return sum;
    }
    function whileSum() public pure returns (uint) {
        uint sum2=0;
        uint i=0;
        while(i<11) {
            i++;
            sum2 += i;
        }
        return sum2;
    }
    // 找到第一个奇数
    function findFirstEven(uint memory arr1) public pure return (uint) {
        for(uint i=0; i<arr1.length; i++) {
            if(arr1[i]%2==0) {
                return arr1[i]
            }
        }
        return 0;
    }
    function efficientLoop1(uint memory arr1) public pure {
        uint len1 = arr1.length;
        for(uint i=0; i< len1; i++) {
            //
        }
    }
}