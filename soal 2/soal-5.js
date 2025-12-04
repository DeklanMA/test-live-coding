//uang heru
n = 850000
// bunga 5 persen per tahun

function bunga(j){
    b= 5/100

    total = j * 12 % b
    return total
}


console.log(bunga(n))