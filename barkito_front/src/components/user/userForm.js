import React, { Component } from 'react';

class UserForm extends Component {


  
  render() {

    return (
      <div className="container" >
        <form onSubmit={this.props.addNewToy} className="add-toy-form">
          <h3>Create a user!</h3>
          <input onChange={this.props.newUser.user_name}  type="text" name="name" placeholder="Enter a user's name..." className="input-text"/>
          <br/>
          <input onChange ={this.props.newUser.borough} type="text" name="image" placeholder="Enter a borough" className="input-text"/>
          <br/>
          <input type="submit"  name="submit" value="Create New Toy" className="submit"/>
        </form>
      </div>
    );
  }

}

export default UserForm;