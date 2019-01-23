import React from 'react';
import axios from 'axios';



class Distillery extends React.Component {
   constructor(props) {
     super(props);
     this.state = {
       id: props.id,
       description: props.description
     };
  }

  handleIDChange = distilleries => {this.setState({ id: distilleries.target.value })}
  handleDescriptionChange = distilleries => {this.setState({ description: distilleries.target.value })}



  handleSubmit = distilleries => {
    event.preventDefault();
  }

  componentDidMount() {  
    axios.get('/distilleries/${props.id}/edit.json',{ id: this.state.id, description: this.state.description})
      .then(res => {
      const distilleries = res.data;
      this.setState({ distilleries });
    })
      .catch(error => console.log(error))
  }
  componentWillUnmount() {
    this.unmounted = true;  
  }
  

  render() {
    return (

      <form onSubmit={this.handleSubmit}>
      

          <label className="input-label">Description:  <input className="input" type="text" name="this.state.description" onChange={this.handleDescriptionChange} /></label><br />
 

        <button className="button" type="submit">Add</button>
      </form>
    );
  }
}


export default Distillery


