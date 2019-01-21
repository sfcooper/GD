import React from 'react';
import axios from 'axios';
import Select from 'react-select';
import makeAnimated from 'react-select/lib/animated';

class Distillery extends React.Component {
    constructor(props) {
    super(props)
    this.state = {
    distilleries: []
    }
}

    getDistilleries() {
        axios.get(`/distilleries.json`)
        .then(res => {
        const distilleries = res.data;
        this.setState({ distilleries });
        })
    .catch(error => console.log(error))
    }

componentDidMount() {
    this.getDistilleries()
    }

    render() {
        let distilleryItems = this.state.distilleries.map(distillerie => ({
            value: distillerie.id,
            label: distillerie.name
        }));
        return (
        <div className="">
           <label className="input-label" htmlFor="distilleries">Distillery</label>
           <Select isClearable components={makeAnimated()} id="distilleries" name="gin[distillery_id]" options={distilleryItems} />
        </div>
        )
    }
}

export default Distillery