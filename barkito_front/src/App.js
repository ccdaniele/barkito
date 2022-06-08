import React from 'react';
import './App.css';
import UserContainer from './components/user/userContainer'
import UserForm from './components/user/userForm'

class App extends React.Component{
  constructor(){
    super()
  
    this.state = {
      users: [],
      newUser: {user_name: ''
      },
    }
  }

  // Send create and send this user to the backend

  addNewUser = (event)=>{

    // create the user profile 
    event.preventDefault()

    const newUser = {
        user_name: event.target[0].value
    }
    //create the json object to send: method, headers, body  
    const newObj = { method:'POST',
      headers: {
       'Content-Type': 'application/json',
      },
     body: JSON.stringify(newUser)
     }

    //  reset the form
  
    event.target.reset()

    // Fetch request which hit the end point and send the object.
   
      fetch('http://localhost:3000/api/v1/users',newObj)
      .then(rsp => rsp.json())
      .then(data =>{
        this.setState({
          users: [...this.state.users, data]
        })
        console.log(data.status)
      })
    }
  
  
    render(){
      return (
        <>
            <UserForm newUser={this.newUser} addNewUser={this.addNewUser}/>
          {/* <div className="buttonContainer">
            <button onClick={this.handleClick}> set user_name </button>
          </div> */}
          {/* <UserContainer users = {this.state} deleteUser={this.createUser}/> */}
        </>
      );
    }
  
  }
  
  export default App;

    // deleteUser = (id) =>{    //     fetch(`http://localhost:3000/api/v1/user${id}`,{method: 'DELETE'})
    //     .then(rsp => rsp.json())
    //     .then(data =>{
          
    //      const updatedUsers = this.state.users.filter(user => {
    //         if(user.id !== id){
    //           return user
    //         } 
    //       })
  
    //       this.setState({
    //         users: updatedUsers
    //       })
    //     })
    // } 

   // componentDidMount(){
  
    //   fetch('http://localhost:3000/api/v1/users')
    //   .then(rsp => rsp.json())
    //   .then(data =>{
    //     this.setState({users: data
    //       })
    //   }) 
    // }
  

  
  
    // addNewUser = (event)=>{
    //   event.preventDefault()
    //   console.log(event)
    //   const newUser = {
        
    //     user_name: event.target.children[1].value,
    //   }
      


       
    //  const newObj = { method:'POST',
    //  headers: {
    //    'Content-Type': 'application/json',

    // },
    //  body: JSON.stringify(newUser)
    //  }
  
    //  event.target.reset()
      
    //   fetch('http://localhost:3000/api/v1/users',newObj)
    //   .then(rsp => rsp.json())
    //   .then(data =>{
      
    //     this.setState({
    //       users: [...this.state.users, data]
    //   })
    //   })
  
    // }
  
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