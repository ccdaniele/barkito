import React, {Component} from 'react';
// import {Link} from "react-router-dom";
import {connect} from 'react-redux'

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

    render(){   
        return(
          
           <div className='wrapper'>
                <ul id='homeButton'>
                    <h1>Welcome</h1>
                    {/* <p><Link to={'/newQuery'} className="button" id="red" >Create a new Query</Link></p>
                    <p><Link to={'/queries'} className="buttonB" >Check my queries</Link></p> */}
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

export default connect (mapStateToProps)(Home)