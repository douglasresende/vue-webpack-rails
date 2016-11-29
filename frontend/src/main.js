import Vue from 'vue'
import App from './App'

/* eslint-disable no-new */
if (document.querySelector('#app')) {
  //  create vue
  new Vue({
    el: '#app',
    template: '<App/>',
    components: { App }
  })
}
