import React from 'react';
import TextareaAutosize from 'react-autosize-textarea';

class TextArea extends React.Component {
    componentDidMount() {
      this.textarea.focus();
    }
   
    render() {
      return (
        <div>
          <label className="input-label" htmlFor="botanicals">Description</label>
          <TextareaAutosize className="input" rows={5} innerRef={ref => this.textarea = ref} name="distilleries[description]" />
        </div>  
      );
    }
  }

  export default TextArea


