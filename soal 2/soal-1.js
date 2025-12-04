n = 100

for(let i = 2; i< n; i++){

    isprima = true

    for(j = 2; j < i; j++){
        if(i % j === 0){
            isprima = false
        }
    }

    if(isprima === true){
        console.log(i)
    }

}