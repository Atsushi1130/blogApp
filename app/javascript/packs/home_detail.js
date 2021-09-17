import Vue from 'vue'
import Home_index from '../home_detail.vue'

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: '#chapter_select',
    render: h => h(Home_index,{props: $('#home_index').data()})
  })
})