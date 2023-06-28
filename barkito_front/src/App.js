import React, { Component } from 'react';
import VendorContainer from './components/VendorContainer'
import './App.css';

class App extends Component {
constructor(){
  super()
  this.state = {
    vendors: []
  }
}

  componentDidMount(){

    fetch('http://127.0.0.1:3000/api/v1/vendors')
    .then(rsp => rsp.json())
    .then(data =>{
      this.setState({vendors: data
      })
    })
  } 

  render(){
    return (
      <>{this.state.vendors.length>0?
        <VendorContainer vendors = {this.state}/>
        :
        null
      }
      </>
    );
  }

}

export default App;
