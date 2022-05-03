import React, { Component } from 'react';

class UserForm extends Component {


  
  render() {

    return (
      <div >
        <form onSubmit={this.props.addNewUser}>
          <h3>Create a user!</h3>
          <input onChange={this.props.newUser} type="text" name="name" placeholder="Enter a user's name..." className="input-text"/>
          <br/>
          <input type="submit"  name="submit" value="Create New user" className="submit"/>
        </form>
      </div>
    );
  }

}

export default UserForm;