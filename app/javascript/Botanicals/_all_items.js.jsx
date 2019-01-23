var AllItems = React.createClass ({
    handleDelete(id) {
        this.props.handleDelete(id);
    },

    render() {
        var botanicals = this.props.botanicals.map((botanical) => {
        return (
            <div key={botanical.id}>
                <h3>{botanical.name}</h3>
                <p>{botanical.description}</p>
                <button onClick={this.handleDelete.bind(this, botanical.id)}>Delete</button>
            </div>
        );
    });

            return <div>{botanicals}</div>;
        }
    });