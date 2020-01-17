import React, { Component } from 'react'

class Search extends Component {
  constructor(props) {
    super(props)
  }

  render(){
    return(
      <div>
        <h1>Search Currency</h1>
        <from>
          <div className="form-group">
            <label>Search for currency</label>
            <input clasName="field" onChange={this.props.handleChange} type="text" name='name' placeholder='ex: Bitcoin' value={this.props.name} />
          </div>
        </from>
      </div>
    )
  }
}

export default Search
