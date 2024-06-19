/**
 * @param {string} s
 * @return {number}
 */
var lengthOfLastWord = function(s) {
    let arrWord = s.split(" ");
    let arrWordFiltered = arrWord.filter((word) => word !== "")
    let lastWord = arrWordFiltered.reverse()[0];
    let wordLength = 0;
    
    while (lastWord[wordLength] !== undefined){
        wordLength++
    }
    return wordLength
};