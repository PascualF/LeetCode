/**
 * @param {number} x
 * @return {boolean}
 */
var isPalindrome = function(x) {
    xRev = x.toString().split('').reverse().join('');
    if (xRev === x.toString()){
        return true;
    }
    return false;
};