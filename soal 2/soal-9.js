n = 100


for(let i = 0 ; i < n ; i++){
    if(i % 2 === 0){
        console.log("weird")
    }else{

        if( i > 2 && i < 5){
            console.log("not Weird")
        }

        if( i >6 && i < 20){
            console.log("weird")
        }

        if(i > 20){
            console.log("not weird")
        }

    }
}