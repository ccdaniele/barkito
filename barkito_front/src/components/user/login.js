import React, {Component} from 'react'
import {connect} from 'react-redux'
import {loginSuccess, loginOut} from '/Users/daniel.calderon/barkito/barkito_v1.0/barkito_front/src/actions/user.action.js'

 class Login extends Component {
     constructor(){
        super()
        this.state={
            email:'',
            password:'',
            loginSuccess:" ",
            error: ''
        }
        
    }

// Sending the user credentials for validation

    handleSubmit = (e) =>{
        e.preventDefault()

    // Creating JSON object to send to the backend. Setting user via Redux    

        const newObj = {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
              user: {
                email: this.state.email,
                password: this.state.password
              }
            })}
          
    // Reseting states
            this.setState({
              email: '',
              password: ''
            })
    // FETCH request

        fetch('http://localhost:3000/api/v1/login', newObj)
          
          .then(resp => resp.json())
          .then(data => {

            //  if JSON response is a message deny the access and print error message

            if (data.message) { 
              
              this.setState({
                error: data.message
              })
              window.location.reload(false);
            
            // if not, update loginSucess with user registered and set localStorage to create the user session

            } else {
              this.props.loginSuccess(data.user)
             
              this.setState({loginSuccess:data.user,
            token:data.jwt})

            localStorage.setItem('token',data.jwt)
          
            // In the future from here we are going to call to the functions to show the information on the feed
            // this.loadMyItems()
            this.props.history.push('/')
            }
          })
          
      }

    handleLogOut=()=>{
    
      localStorage.clear()
      this.props.loginOut()
      window.location.reload(false);
    }

    render(){
        return(
          <div>
              {/* If error render error message, otherwise keep going */}
              {this.state.error? <h4 style={{color:'white'}}>{this.state.error}</h4> : null}
              {/* Display form */}
                <form onSubmit={this.handleSubmit}>
                    {/* Display email space */}
                    <div className='form-group'>
                        <label className="form-text"></label>
                     <input type='text' className='form-control' placeholder='email' onChange={e=> this.setState({email: e.target.value})}/>       
                    </div>
                    {/* Display password_digest space */}
                    <div className='form-group'>
                        <label  className="form-text"></label>
                    <input type='password' className='form-control' placeholder='Password' onChange={e=> this.setState({password: e.target.value})}/>
                    </div>

                    <button className='btn btn-secondary btn-block'>Sign in</button>
                </form> 
            </div>      
        )
    }
}

const mapStateToProps = (state)=>{
  return {
      user: state.userData,
      queries: state.queryData
  }
}

const mapDispatchToProps = {
    loginSuccess, loginOut,
}



export default connect (mapStateToProps, mapDispatchToProps)(Login)