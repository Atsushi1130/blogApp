<template>
  <div id="home_index">
    <div v-for="post in posts" :key="post.id">
      <a href="/detail">{{ post.title }}</a>
    </div>
  </div>
</template>

<script>
export default {
  props: ['posts']
}
</script>

<style scoped>
a {
  font-size: 2em;
  text-align: center;
}
</style>
