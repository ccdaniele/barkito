import React, {Component} from 'react';
// import {Link} from "react-router-dom";
import {connect} from 'react-redux'
import {loginOut} from '/Users/daniel.calderon/barkito/barkito_v1.0/barkito_front/src/actions/user.action.js'

 class Home extends Component {
    constructor(){
        super()
        this.state = {
            loginSuccess: []
        }
      }

      componentDidMount(){
          if(!this.props.user){
              this.props.history.push('/login')
          }
      }

      handleLogOut=()=>{
    
        localStorage.clear()
        this.props.loginOut()
        this.props.history.push('/login')
        window.location.reload(false);
      }

      handleVendors=()=>{
        this.props.history.push('/places')
      }

    render(){   
        return(
          
           <div className='wrapper'>
                <ul id='homeButton'>
                    <h1>Welcome{this.props.user.name}</h1>
                    {/* <p><Link to={'/newQuery'} className="button" id="red" >Create a new Query</Link></p>
                    <p><Link to={'/queries'} className="buttonB" >Check my queries</Link></p> */}
                     <button onClick={this.handleLogOut}>Log out</button>
                     <button onClick={this.handleVendors}>places</button>
                </ul>   
            </div>
              
          

        );
        
    }
}

const mapStateToProps = (state)=>{
    
    return {
        user: state.userData
    }
}

const mapDispatchToProps = {
    loginOut,
}

export default connect (mapStateToProps, mapDispatchToProps)(Home)