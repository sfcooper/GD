import React from 'react'
import ReactDOM from 'react-dom'
import AutoSizeTextArea from 'AutoSizeTextArea'

document.addEventListener('turbolinks:load', function() {
    var element = document.getElementById("textarea-component");
    ReactDOM.render(<AutoSizeTextArea />, element);
});