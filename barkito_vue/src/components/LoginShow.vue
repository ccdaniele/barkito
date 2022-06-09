<script>
import axios from "axios";
import { Card, Input, Button, Alert } from "agnostic-vue";
export default {
  name: "LoginShow",
  components: {
    Card,
    Input,
    Button,
    Alert,
  },
  data() {
    return {
      username: "",
      email: "",
      password: "",
      errorMsg: "",
      hasError: false,
    };
  },
  methods: {
    async handleUserAuthentication() {
      const user = {
        username: this.username,
        email: this.email,
        password: this.password,
      };

      axios.post("http://localhost:3000/api/v1/login", user).catch((error) => {
        console.log(error);
        this.errorMsg = error;
        this.hasError = true;
      });
    },
  },
};
</script>

<template>
  <Card is-stacked is-rounded>
    <div class="p24">
      <strong>Login to Barkito</strong>
    </div>
    <div class="p24 flex-grow-1 flex-shrink-1" style="flex-basis: 50ch">
      <section>
        <Input
          class="mbe10"
          v-model="this.username"
          id="username"
          placeholder="Enter your username"
          label="Username"
          type="text"
        />
        <Input
          class="mbe10"
          v-model="this.email"
          id="email"
          placeholder="Enter your email"
          label="Email"
          type="email"
        />
        <Input
          class="mbe10"
          v-model="this.password"
          id="password"
          placeholder="Enter your password"
          label="Password"
          type="password"
        />
        <Button isRounded isBlock @click="handleUserAuthentication()"
          >Login</Button
        >

        <div v-if="errorMsg" class="mbs12 mbe16">
          <Alert type="error">
            <p class="flex-fill">
              {{ errorMsg }}
            </p>
          </Alert>
        </div>
      </section>
    </div>
  </Card>
</template>

<style scoped>
</style>
