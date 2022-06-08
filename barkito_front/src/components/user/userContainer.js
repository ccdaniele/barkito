import React from 'react';
import UserCard from './userCard'

class UserContainer extends React.Component{
  render(){
    
    return(
      <div id="toy-collection">
       { this.props.users.users.map((user)=>{ 
         return < UserCard userInfo={user} deleteUser={this.props.deleteUser}/>
          })}
      </div>
    );
  }
}


export default UserContainer;