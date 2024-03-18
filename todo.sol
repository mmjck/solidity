// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }


    Todo[] public todos;

    function create(string calldata _text) public  {
        todos.push(Todo({text: _text, completed: false}));


        todos.push(Todo(_text, false));

        Todo memory _todo;
        _todo.text = _text;
        _todo.completed = false;

        todos.push(_todo);
    }


    function get(uint256 _index) public  view  returns (string memory text, bool completed){
        return (todos[_index].text, todos[_index].completed);
    }


    function updateText(uint256 _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }


    function toggleCompleted(uint256 _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }


}