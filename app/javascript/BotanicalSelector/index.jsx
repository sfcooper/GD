import React from 'react';
import axios from 'axios';
import Select from 'react-select';
import makeAnimated from 'react-select/lib/animated';

class Botanical extends React.Component {
    constructor(props) {
    super(props)
    this.state = {
    botanicals: []
    }
}

    getBotanicals() {
        axios.get(`/botanicals.json`)
        .then(res => {
        const botanicals = res.data;
        this.setState({ botanicals });
        })
    .catch(error => console.log(error))
    }

componentDidMount() {
    this.getBotanicals()
    }

    render() {
        let botanicalItems = this.state.botanicals.map(botanical => ({
            value: botanical.id,
            label: botanical.name
        }));
        return (
        <div className="">
           <label className="input-label" htmlFor="botanicals">Botanicals <small> (You can select more than one)</small></label>
           <Select isMulti isClearable components={makeAnimated()} id="botanical" name="gin[botanical_ids][]" options={botanicalItems} />
        </div>
        )
    }
}

export default Botanical