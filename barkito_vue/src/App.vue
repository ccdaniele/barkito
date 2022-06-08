<script setup>
// This starter template is using Vue 3 <script setup> SFCs
// Check out https://vuejs.org/api/sfc-script-setup.html#script-setup
import TheNavbar from './components/TheNavbar.vue'
import HelloWorld from './components/HelloWorld.vue'
import 'agnostic-vue/dist/common.min.css' // Import AgnosticUI's common CSS
import 'agnostic-vue/dist/index.css' // Import AgnosticUI's component-specific CSS
import axios from 'axios';
</script>

<template>
  <TheNavbar/>
  <HelloWorld/>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}
</style>
