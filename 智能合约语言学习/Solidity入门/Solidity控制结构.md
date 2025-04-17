- **if else语句**
```
if (contition1) {
    _// condition1=true 时执行的代码块_
} else if (condition2) {
    _// condition1=false 且 contition2=true 时执行的代码块_
} else {
    _// condition1 和 condition2 同时为 false 时执行的代码块_
}
```
- **for循环**
```
for(uint16 i = 1; i <= 10; i++) {
    _// init-statement是 i=1 ; test-statement是 i<=n ; iteration-statement是 i++_
    sum += i;
}
```

- **while循环**
```
function sumToN(uint16 n) public pure returns(uint16) {
    uint16 sum = 0;
    uint16 i = 1; 
    while(i <= n) { _//只改了这一行_
        sum += i;
        i++; _// 修改循环变量的值_
    }
    return sum;
}
```

- **break关键字**
```
function hasSpace(string memory input) public view returns (bool) {
    bool result;
    for (uint i = 0; i < bytes(input).length; i++) {
        if (bytes(input)[i] == " ") { _// 检查当前字符是否是空格_
            result = true;
            break; _// 如果当前字符是空格，跳出循环_
        }
    }
    _// do something_
    console.log("result is: %s", result);
    return result;
}
```
- **continue关键字**
```
function printOddNumbers() public {
    for (uint i = 1; i <= 10; i++) {
        if (i%2 == 0) { _// 如果是偶数，跳过本次循环_
            continue;
        }
        console.log(i); _// 如果是奇数，就打印输出_
    }
}
```
- **异常处理机制require**

require函数在智能合约中主要用于验证函数执行前的的条件，确保合约状态的正确性，如果require的条件不满足，则函数将停止执行，并抛出异常，触发状态回滚。通常require被放置在函数的开始处，以便在进一步处理逻辑之前，首先确保所有基础条件都满足。

```
function splitEther(address payable addr1, address payable addr2) public payable {
    require(msg.value % 2 == 0, "Even value required."); _// 检查传入的ether是不是偶数_
    addr1.transfer(msg.value / 2);
    addr2.transfer(msg.value / 2);
}
```

- **异常处理机制assert**

Solidity提供的assert函数让我们可以检查合约状态是否正常，否则抛出异常。
```
function splitEther(address payable addr1, address payable addr2) public payable {
    require(msg.value % 2 == 0, "Even value required."); _// 检查传入的ether是不是偶数_
    uint balanceBeforeTransfer = address(this).balance;
    addr1.transfer(msg.value / 2);
    addr2.transfer(msg.value / 2);
    assert(address(this).balance == balanceBeforeTransfer); _// 检查分账前后，本合约的balance不受影响_
}
```
在Solidity中，assert和require都用于检查异常情况，并在条件不满足时抛出异常；主要有以下区别：require通常用于验证外部输入、处理条件和确认合约的交互符合预期，如果require检查失败，会撤销所有修改并退换剩余的Gas； assert主要用于检查内部错误，assert应仅在确定有逻辑错误时使用，与require不同，assert失败将消耗所提供的Gas，并回滚所有修改。

- **异常处理机制revert**

在Solidity中，revert和require都用于异常处理并撤销所有状态变化，revert的灵活性表现在它可以与if-else结合使用，提供比require更精细的控制逻辑，示例：
```
_// 使用方式一_
revert CustomError(arg1, arg2);

_// 使用方式二_
revert("My Error string");
```
```
function splitEther(address payable addr1, address payable addr2) public payable {
    if (msg.value % 2 == 0) { _// 检查传入的ether是不是偶数_
        revert("Even value revertd.");
    } 
    addr1.transfer(msg.value / 2);
    addr2.transfer(msg.value / 2);
}
```

