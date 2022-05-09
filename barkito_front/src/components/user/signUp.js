import React, {Component} from 'react';

export default class SignUp extends Component {
    constructor(){
        super()
        this.state={
            name:'',
            username:'',
            email:'',
            password:'',
            passwordConfirm:''
        }
    }


    handleSubmit = (e) =>{
        e.preventDefault()

        const newObj ={
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
              Accept: 'application/json'
            },
            body: JSON.stringify({
              user: {
                name: this.state.name,
                username: this.state.username,
                email: this.state.email,
                password: this.state.password
                // password_confirmation: this.state.passwordConfirm
              }
            })
          }
        // debugger
        fetch('http://localhost:3000/api/v1/users', newObj )
            .then(r => r.json())
            this.props.history.push('/login')
        }



    render(){


        return(
            // Sign up Form
            <div className="inner-sign-up">
            <form onSubmit={this.handleSubmit}>
                {/* username input */}
               <div className='form-group'>
                   <input type='text' className='form-control' placeholder='name'onChange={e=> this.setState({name: e.target.value})}/>    
               </div>
                {/* username input */}
               <div className='form-group'>
                   <input type='text' className='form-control' placeholder='username'onChange={e=> this.setState({username: e.target.value})}/>    
               </div>
               {/* Email input */}
               <div className='form-group'>
                   <input type='email' className='form-control' placeholder='Email' onChange={e=> this.setState({email: e.target.value})}/>                 
               </div>
               {/* Password */}
               <div className='form-group'>
                   <input type='password' className='form-control' placeholder='Password' onChange={e=> this.setState({password: e.target.value})}/>
               </div>
               {/* Password_confirm */}
               <div className='form-group'>
                   <input type='password' className='form-control' placeholder='Confirm Password' onChange={e=> this.setState({passwordConfirm: e.target.value})}/>
               </div>
               {/* Button */}
               <button className='btn btn-secondary btn-block'>Sign Up</button>
            </form>
            </div>
        )
    }
}