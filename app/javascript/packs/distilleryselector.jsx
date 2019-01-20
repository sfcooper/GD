import React from 'react'
import ReactDOM from 'react-dom'
import DistillerySelector from 'DistillerySelector'

document.addEventListener('turbolinks:load', function() {
    var element = document.getElementById("distillery-selector");
    ReactDOM.render(<DistillerySelector />, element);
});