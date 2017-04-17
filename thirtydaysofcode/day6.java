function processData(input) {
    //Enter your code here
    
    var str=input.split("\n");
    
   
    
    for(var i=1;i<=str[0];i++)
        {
            var ev="",odd="";
            
            for(var j=0;j<str[i].length;j++)
                {
                    if(j%2===0)
                        ev+=str[i][j];
                    else
                        odd+=str[i][j];
                }
            console.log(ev + " " + odd);
        }
    
    
 
} 

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   processData(_input);
});