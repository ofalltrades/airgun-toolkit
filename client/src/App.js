import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import _ from 'lodash';
// import _ from 'lodash/fp'
import gunAPI from './gun-api';

class App extends Component {
  render() {
    var foo = gunAPI;
    gunAPI.index({id: '5977687be0784a4f9951ea87'}, _ => null)

    return (
      <div className="App">
        <div className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h2>Welcome to React</h2>
        </div>
        <p className="App-intro">
        </p>
      </div>
    );
  }
}

export default App;
