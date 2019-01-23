import React from 'react'
import ReactDOM from 'react-dom'
import Botanicals from 'Botanicals'

document.addEventListener('turbolinks:load', function() {
    var element = document.getElementById("botanicals");
    ReactDOM.render(<Botanicals />, element);
});