// harga beli sepatu ilham
 n = 165000
//uang ilham
 j = 150000

 function diskon(n,j){
    diskons = 15/100
    hargaDiskon = n - n * diskons 
    

    return j - hargaDiskon

 }

 console.log(diskon(n,j))