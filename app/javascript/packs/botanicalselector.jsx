import React from 'react'
import ReactDOM from 'react-dom'
import BotanicalSelector from 'BotanicalSelector'

document.addEventListener('turbolinks:load', function() {
    var element = document.getElementById("botanical-selector");
    ReactDOM.render(<BotanicalSelector />, element);
});