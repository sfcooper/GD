import React from 'react'
import ReactDOM from 'react-dom'
import CountrySelector from 'CountrySelector'

document.addEventListener('turbolinks:load', function() {
    var element = document.getElementById("country-selector");
    ReactDOM.render(<CountrySelector />, element);
});