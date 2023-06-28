import React, { Component } from 'react';
import VendorCard from './VendorCard'

class VendorContainer extends Component{
    
    
  render(){
    
    return(
      <div id="Vendor-collection">
        {console.log(this.props.vendors.vendors)}
       { this.props.vendors.vendors.map((vendor)=>{ 
       < VendorCard vendorinfo={vendor}/>
          })}
      </div>
    );
  }
}


export default VendorContainer;