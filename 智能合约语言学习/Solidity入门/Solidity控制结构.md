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


