function collatz(num){
    let arr = [num];
    while(num > 1){
        if(num % 2 === 0){
            num = num / 2;
            arr.push(num);
        }else{
            num = num * 3 + 1;
            arr.push(num);
        }
    }
    length = arr.length;
    // console.log(arr);
    // console.log("The length is: " + length);
    return length;
}
function longestColl() {
    let max = 0;
    for(i = 1; i < 1000001; i++){
        if(collatz(i) > max){
            max = i;
        }
    }
    console.log(max);
}


longestColl();
