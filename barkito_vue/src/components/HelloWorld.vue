<script>
import { Card, Input, Button } from "agnostic-vue";
export default {
  name: "HelloWorld",
  components: {
    Card,
    Input,
    Button,
  },
  data() {
    return {
      username: '',
      email: '',
      password: '',
    }
  },
  methods: {
    async handleUserAuthentication() {
      
      const user = {
        username: this.username,
        email: this.email,
        password: this.password,
      }
      
      try {
        const req = await axios.post('http://localhost:3000/api/v1/users', user)
        } catch (error) {
          console.log(error);
    }
    console.log(user)
  }
},
};
</script>

<template>
  <Card is-stacked is-rounded >
      <div class="p24">
        <strong>Login to Barkito</strong>
      </div>
      <div class="p24 flex-grow-1 flex-shrink-1" style="flex-basis: 50ch;" >
        <section>
          <Input class="mbe10" v-model="this.username" id="username" placeholder="Enter your username" label="Username" type="text" />
          <Input class="mbe10" v-model="this.email" id="email" placeholder="Enter your email" label="Email" type="text" />
          <Input class="mbe10" v-model="this.password" id="password" placeholder="Enter your password" label="Password" type="text" />
          <Button isRounded isBlock @click="handleUserAuthentication()">Login</Button>    
      </section> 
      </div>
    </Card>
</template>

<style scoped>

</style>
