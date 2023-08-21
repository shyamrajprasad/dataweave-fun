%dw 2.0
import isUpperCase from dw::core::Strings
output application/json
import * from dw::Runtime
var bin_lookup = {
        '00000': 'A',
        '00001': 'B',
        '00010': 'C',
        '00011': 'D',
        '00100': 'E',
        '00101': 'F',
        '00110': 'G',
        '00111': 'H',
        '01000': 'I', 
        '01001': 'J', 
        '01010': 'K', 
        '01011': 'L', 
        '01100': 'M', 
        '01101': 'N', 
        '01110': 'O', 
        '01111': 'P', 
        '10000': 'Q',
        '10001': 'R',
        '10010': 'S',
        '10011': 'T',
        '10100': 'U',
        '10101': 'V',
        '10110': 'W',
        '10111': 'X',
        '11000': 'Y',
        '11001': 'Z',
        '11010': '0',
        '11011': '1',
        '11100': '2',
        '11101': '3',
        '11110': '4',
        '11111': '5'
    }

fun convertSFID15to18(sfid) = 
    if(sizeOf(sfid) == 15)
        sfid ++ ([ sfid[0 to 4], sfid[5 to 9], sfid[10 to 14] ] map ((item, index) -> 
                            bin_lookup[item[-1 to 0] splitBy "" map (if(isUpperCase($)) 1 else 0) joinBy ""]
                        ) joinBy "") else fail("Error : " ++ sfid ++ " has not a length of 15 characters")
---
convertSFID15to18("0013k00003OymdK")
