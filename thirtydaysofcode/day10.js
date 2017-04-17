process.stdin.resume();
process.stdin.setEncoding('ascii');

var input_stdin = "";
var input_stdin_array = "";
var input_currentline = 0;

process.stdin.on('data', function (data) {
    input_stdin += data;
});

process.stdin.on('end', function () {
    input_stdin_array = input_stdin.split("\n");
    main();    
});

function readLine() {
    return input_stdin_array[input_currentline++];
}

/////////////// ignore above this line ////////////////////

function main() {
    var n =  parseInt(readLine());
   
  
    var binstring=Number(n).toString(2).split("");
    var counting=1;
    var max=1;
    for(var i=0;i<binstring.length;i++)
        {
            if(binstring[i]==="1" && binstring[i+1]==="1")
                {
                counting++;
               
                }
            else
                {
                    if(counting>max)
                        max=counting;
                    
                    counting=1;
                }
        }
    
  console.log(max);
    
}
