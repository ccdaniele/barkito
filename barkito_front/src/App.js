import {Route, Switch,withRouter} from 'react-router-dom'
import {connect} from 'react-redux'
import {Nav} from 'react-bootstrap'
import Login from './components/user/login'
import SignUp from './components/user/signUp'
import VendorIndex from './components/vendor/vendorIndex'
import Home from './components/navigation/home'
import {currentUser} from './actions/user.action'
import React, {Component} from 'react'



class App extends Component{
  constructor(){
    super()
    this.state={
      currentUser: ''
    }
  }
  render(){
    return (
      <div>
        <Nav/>
          <Switch>
            <Route exact path="/" component={Home}/>
            <Route exact path="/login" component={Login}/>
            <Route exact path="/signup" component={SignUp}/>
            <Route exact path="/places" component={VendorIndex}/>
          </Switch>
      </div>
    );
  }
}
  
const mapDispathToProps ={

  currentUser
}

const mapStateToProps = (state)=>{
  return {
    
      user: state.userData
  }
}

export default connect (mapStateToProps, mapDispathToProps) (withRouter(App));




// <UserForm newUser={this.newUser} addNewUser={this.addNewUser}/>

//   this.state = {
//     users: [],
//     newUser: {username: ''
//     },
//   }
// }

// Send create and send this user to the backend

// addNewUser = (event)=>{

//   // create the user profile 
//   event.preventDefault()

//   const newUser = {
//       username: event.target[0].value
//   }
//   //create the json object to send: method, headers, body  
//   const newObj = { method:'POST',
//     headers: {
//      'Content-Type': 'application/json',
//     },
//    body: JSON.stringify(newUser)
//    }

//   //  reset the form

//   event.target.reset()

//   // Fetch request which hit the end point and send the object.
 
//     fetch('http://localhost:3000/api/v1/users',newObj)
//     .then(rsp => rsp.json())
//     .then(data =>{
//       this.setState({
//         users: [...this.state.users, data]
//       })
//       console.log(data.status)
//     })
//   }
  
    // handleClick = () => {
    //   let newBoolean = !this.state.display
    //   this.setState({
    //     display: newBoolean
    //   })
    // }
  
    // handleLike = (id) =>{
    
    
    // let currentToy = this.state.toys.find(toy => {
    //   return toy.id === id
    // })
    // let updatedLike = currentToy.likes + 1
  
    // // const newObj = { method:'PATCH',
    // //  headers: {'Content-Type': 'application/json'},
    // //  body: JSON.stringify({likes: updatedLike})
    // //  }
  
    //   fetch(`http://localhost:3000/toys/${id}`,newObj)
    //   .then(rsp => rsp.json())
    //   .then(data =>{
        
    //     const updatedToys = this.state.toys.map(toy => {
    //       if(toy.id === id){
    //         toy.likes += 1
    //         return toy
    //       } else {
    //         return toy
    //       }
    //     })
        
    //     this.setState({
    //       toys: updatedToys
    //   })
    //   })
  
    // }




  
        // borough: "", 
        // neighborhood: "", 
        // street: "", 
        // city: "", 
        // zip_code: "", 
        // user_gender:"", 
        // user_description:"", 
        // user_date_of_birth:"",
        // user_email:"",
        // user_password_digest:"",
        // vendor_admin:"",
        // performer_admin:"",
        // crew_member:""

              // borough: "", 
      // neighborhood: "", 
      // street: "", 
      // city: "", 
      // zip_code: "", 
      // user_gender:"", 
      // user_description:"", 
      // user_date_of_birth:"",
      // user_email:"",
      // user_password_digest:"",
      // vendor_admin:"",
      // performer_admin:"",
      // crew_member:""