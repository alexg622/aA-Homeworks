import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchTearm: ""
    };
    this.handleSearchTermChange = this.handleSearchTermChange.bind(this);
    this.handleSubmitSearch = this.handleSubmitSearch.bind(this);
  };

  handleSearchTermChange (e) {
    let search = e.target.value;
    this.setState({
      searchTerm: search
    });
  };

  handleSubmitSearch (e) {
    e.preventDefault();
    let searchTerm = this.state.searchTerm.split(" ").join("+")
    const { fetchSearchGiphys } = this.props;
    fetchSearchGiphys(searchTerm)
    this.setState({
      searchTerm: ""
    });
  };

  render() {
    const {giphys} = this.props
    return (
      <div>
        <form>
          <input value={this.state.searchTerm} onChange={this.handleSearchTermChange}/>
          <button onClick={this.handleSubmitSearch}>Search Giphy</button>
        </form>
        <GiphysIndex giphys={giphys} />
      </div>
    );
  }
};

export default GiphysSearch;
