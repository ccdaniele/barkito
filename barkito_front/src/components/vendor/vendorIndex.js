import React, {Component} from 'react';
import {connect} from 'react-redux';
import {currentUser} from '../../actions/user.action'
import {vendor_index} from '../../actions/vendor.action'
// import {currentvendor} from '../../actions/car.action'
import vendor from '../../reducers/vendor.reducer';





class VendorIndex extends Component{
  constructor(){
    super()
    this.state = {
     vendors:[],
     loading: false
    }
  }

  componentDidMount(){
    this.loadVendorIndex()
}

  loadVendorIndex=()=>{
    debugger
    const vendorsArray = []
    
    
  
    fetch('http://localhost:3000/api/v1/vendors')
      .then(resp=>resp.json())
      .then(data=>{
     
       
        vendorsArray.push(data.map(vendor))
            this.props.vendor_index(vendorsArray) 
    console.log('vendors from vendors')
        })

    }
  

  // handleLoading=()=>{
  //   this.setState({loading:true})
  //    setTimeout(()=>{
  //      this.setState({loading:false})
  //    },3000)

  //   }
     

  handleDelete=(e)=>{

    
    const vendor_id = e.target.value
    this.handleLoading()

      fetch(`http://localhost:3000/api/v1/vendors/${vendor_id}`,{method: 'DELETE'})
      
        this.loadVendorIndex()
        
        
    
  }

  // handleAdd=(e)=>{
  //   this.props.currentvendor(e.target.value)

    

  //   this.props.history.push('/newcar')
  // }


  // handleEdit=(e)=>{
  //   const vendor_edit = e.target.value
  //   this.props.history.push({
  //     pathname: '/edit', 
  //     state: vendor_edit
  //     })
  // }

  // handleOnClick=(e)=>{

  //   const car_id = e.target.value

  //   this.props.history.push({
  //     pathname: '/showcar', 
  //     state: car_id
  //     })
  // }

  render(){
    

      return (
          <div>

          </div>


    
    );
  } 
}

const mapStateToProps = (state)=>{
  
  return {
      user: state.userData,
      vendors: state.vendorData
  }
  
}

const mapDispathToProps ={

  currentUser, vendor_index
}

export default connect (mapStateToProps, mapDispathToProps)(VendorIndex)




// {this.props.vendors.map(vendor=>
//   <div>
//     <div>            
//         <h3>{vendor.name}</h3>
//         <p>{vendor.borough}</p>
//         <p>{vendor.street}</p>
//         <p>{vendor.building_number}</p>
//       </div>
//       <div>
//         <div>
//           <div>
//             {/* {vendor.cars.map(car=>

//               <button className="btn btn-link" value={car.id} onClick={this.handleOnClick} > {car.model}</button>
                    
//             )} */}
//           </div>
//             {/* <button className="btn btn-outline-info" value={vendor.id}onClick={this.handleAdd}>Add</button>
//             <button className="btn btn-outline-info" value={vendor.id}onClick={this.handleEdit}>Edit </button>
//             <button className="btn btn-outline-secondary" value={vendor.id}onClick={this.handleDelete}>Delete</button> */}
//         </div>
//       </div>
//   </div>
// )} 