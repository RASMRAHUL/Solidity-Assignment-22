// SPDX-License-Identifier: MIT

pragma solidity 0.8.3;
contract Array {
    uint[] data;
    uint[] temp;
   
   
// Push element to the data array i.e at the last
    function Pushdata(uint n) public 
    {
        data.push(n);
    }

// Pop element from the data array i.e from last index
// We can use to pop the elements also
    function Popdata() public 
    {
        data.pop();
    }


// Get the length of the data array
// I'm not using it


    // function getLength() public view returns(uint)
    // {
         
    //     return data.length;
    // }



// Get length after remove the element at index i
// It will display the length correctly only after removing the element from the data
// But i will not using it in my prongram 


    // function getNLength() public view returns(uint)
    // {
         
    //     return data.length -1;
    // }



// Remove the element from the given index i.e the value at index i will be 0 (zero)
    function remove(uint i) public
    {
        delete data[i];
        for(uint j = 0; j < data.length ; j++)
        {
            if(j == i) // for skipping the i-th element from the data array
                continue;
            else
                temp.push(data[j]);  // for pushing the remaining element to the temp array
        }
        
       
    }
// for displaying the data array with removed element and at the removed place 0 will be display
    function OldArray() public view returns(uint[] memory)
    {
        return data;
    }

// for displaying the new array without the 0 i.e after removing the 0 from the array
// This function will give the output of our program
    function NewArray() public view returns(uint[] memory)
    {
        return temp;
    }

}