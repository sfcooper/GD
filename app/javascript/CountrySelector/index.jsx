import React from 'react'
import Select from 'react-select'

const countryOptions = [
    { label: "United Kingdom", value: "United Kingdom"},
    { label: "Republic of Ireland", value: "Republic of Ireland" },
    { label: "United States of America", value: "United States of America" }

  ];

class CountrySelector extends React.Component {
    render() {
        return (
            <div className="form-group">
            <label className="input-label" htmlFor="distillery_country">Country</label>
              <Select isClearable id="country" name="distillery[country]" options={countryOptions} />
            </div>
            
            

        );
    }
}

export default CountrySelector