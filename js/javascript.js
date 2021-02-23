
/*
    Write function to return text values of each input string. only characters a/A - z/Z have a value.
    a=1, b=2, c=3, ... z=26

*/
function StringValue(string) {
    var value = 0;

    //code here//
    for (letter in string.toLowerCase()) {
        value += string.charCodeAt(letter) - 96
    }

    return value;
}

window.onload = () => {

    document.getElementById('blue').innerHTML = StringValue('blue');
    document.getElementById('red').innerHTML = StringValue('red');

};


