var NewItem = React.createClass({

    handleClick() {
        var name = this.refs.name.value;
        var description = this.refs.description.value;
        $.ajax({
            url: "/botanicals",
            type: "POST",
            data: { botanical: { name: name, description: description } },
            success: botanical => {
                this.props.handleSubmit(botanical);
            }
        });
    },

    render() {
        return (
            <div>
                <input ref='name' placeholder='Enter the name of the item' />
                <input ref='description' placeholder='Enter a description' />
                <button onClick={this.handleClick}>Submit</button>
            </div>
        );
    }
});