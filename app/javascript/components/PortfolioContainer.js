import React, { Component } from 'React'

class PortfolioContainer extends Component {
  constructor(props){
    super(props)

    this.state = {
      name: '',
      portfolio: [],
      seach_results: [],
      active_currency: null,
      amount: 0
    }
  }
}
