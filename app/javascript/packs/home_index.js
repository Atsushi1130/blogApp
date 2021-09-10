import Vue from 'vue'
import Home_index from '../home_index.vue'

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: '#home_index',
    render: h => h(Home_index,{props: $('#home_index').data()})
  })
})