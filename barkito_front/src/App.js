import React from 'react';
import './App.css';
import UserContainer from './components/user/userContainer'
import UserForm from './components/user/userForm'

class App extends React.Component{
  constructor(){
    super()
  
    this.state = {
      display: false,
      users: [],
      newUser: {user_name: "",
      borough: "", 
      neighborhood: "", 
      street: "", 
      city: "", 
      zip_code: "", 
      user_gender:"", 
      user_description:"", 
      user_date_of_birth:"",
      user_email:"",
      user_password_digest:"",
      vendor_admin:"",
      performer_admin:"",
      crew_member:""
    }
    }
  }

    componentDidMount(){
  
      fetch('http://localhost:4000/users')
      .then(rsp => rsp.json())
      .then(data =>{
        this.setState({users: data
          })
      }) 
    }
  
    newUser = (event)=>{
      this.setState({
        user_name: "",
        borough: "", 
        neighborhood: "", 
        street: "", 
        city: "", 
        zip_code: "", 
        user_gender:"", 
        user_description:"", 
        user_date_of_birth:"",
        user_email:"",
        user_password_digest:"",
        vendor_admin:"",
        performer_admin:"",
        crew_member:""
      })
    }
  
  
    addNewUser = (event)=>{
      event.preventDefault()
      const newUser = {

        user_name: event.target.children[1].value,
        borough: event.target.children[2].value,
        neighborhood: event.target.children[3].value, 
        street: event.target.children[4].value, 
        city: event.target.children[5].value,
        zip_code: event.target.children[6].value, 
        user_gender:event.target.children[7].value, 
        user_description:event.target.children[8].value,
        user_date_of_birth:event.target.children[9].value,
        user_email:event.target.children[10].value,
        user_password_digest:event.target.children[11].value,
        vendor_admin:event.target.children[12].value,
        performer_admin:event.target.children[13].value,
        crew_member:event.target.children[14].value
      }
      
     const newObj = { method:'POST',
     headers: {'Content-Type': 'application/json'},
     body: JSON.stringify(newUser)
     }
  
     event.target.reset()
      
      fetch('http://localhost:4000/toys',newObj)
      .then(rsp => rsp.json())
      .then(data =>{
      
        this.setState({
          users: [...this.state.users, data]
      })
      })
  
    }
  
    handleClick = () => {
      let newBoolean = !this.state.display
      this.setState({
        display: newBoolean
      })
    }
  
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
  
    deleteUser = (id) =>{
  
    
        fetch(`http://localhost:4000/toys/${id}`,{method: 'DELETE'})
        .then(rsp => rsp.json())
        .then(data =>{
          
         const updatedUsers = this.state.users.filter(user => {
            if(user.id !== id){
              return user
            } 
          })
  
          this.setState({
            users: updatedUsers
          })
        })
    } 
  
    render(){
      return (
        <>
            <UserForm addNewUser={this.addNewUser} newUser={this.newUser}/>

          <div className="buttonContainer">
            <button onClick={this.handleClick}> Add user </button>
          </div>
          <UserContainer users = {this.state} deleteUser={this.createUser}/>
        </>
      );
    }
  
  }
  
  export default App;
  
