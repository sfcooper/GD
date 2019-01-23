var Body = React.createClass({


    getInitialState(){
        return { botanicals: [] };
    },

    componentDidMount(){
        $.getJSON('/botanicals.json', (response) => { 
            this.setState({ botanicals: response }); 
        });
    },

    handleSubmit(item) {
        var newState = this.state.botanicals.concat(botanical);
        this.setState({ botanicals: newState })
    },

    handleDelete(id) {
        $.ajax({
            url: `/botanicals/%{id}`,
            type: 'DELETE',
            success: () => {
                this.removeItemClient(id);            
            }
        });
    },

    removeItemClient(id) {
        var newBotanicals = this.state.botanicals.filter((botanical) => {
            return botanical.id != id;
        });

        this.setState({ botanicals: newBotanicals });
    },

    render() {
        return (
            <div>
                <NewItem handleSubmit={this.handleSubmit} />
                <AllItems botanicals={this.state.botanicals} />
            </div>
        );
    }
});

export default Body