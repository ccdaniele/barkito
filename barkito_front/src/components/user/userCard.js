import React, { Component } from 'react';

class UserCard extends Component {

  render() {
    const {id, user_name, borough} = this.props.userInfo
    return (
      <div key= {user_name} className="card">
        <h2>{user_name}</h2>
        <h2>{borough}</h2>
        {/* <img src={image} alt={name} className="toy-avatar" /> */}       
        {/* <button onClick = {() => this.props.toyLikes(id)} className="like">Like {'<3'}</button> */}
        <button onClick = {() => this.props.deleteUser(id)} className="del-btn">Delete User</button>
      </div>
    );
  }

}

export default UserCard;