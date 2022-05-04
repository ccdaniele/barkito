import React, {Component} from 'react';

export default class SignUp extends Component {
    constructor(){
        super()
        this.state={
            user_name:'',
            nick_name:'',
            user_email:'',
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
                user_name:this.state.nick_name,
                nick_name: this.state.nick_name,
                user_email: this.state.email,
                password: this.state.password,
                // password_confirm: this.state.passwordConfirm
              }
            })
          }
        debugger
        fetch('http://localhost:3000/api/v1/users', newObj )
            .then(r => r.json())
            this.props.history.push('/login')
        }

    render(){

        const size ={
            height: 30,
            width: 150,
            
        }

        return(
            // Sign up Form
            <div className="inner-sign-up">
            <form onSubmit={this.handleSubmit}>
                {/* user_name input */}
               <div className='form-group'>
                   <input type='text' className='form-control' placeholder='user_name'onChange={e=> this.setState({user_name: e.target.value})}/>    
               </div>
                {/* Nick_name input */}
               <div className='form-group'>
                   <input type='text' className='form-control' placeholder='nick_name'onChange={e=> this.setState({nick_name: e.target.value})}/>    
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