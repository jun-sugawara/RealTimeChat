import { createRouter, createWebHistory } from 'vue-router'
import WelcomeView from '../views/WelcomeView'
import ChatRoom from '../views/ChatRoom'

// import Home from '../views/Home.vue'

const routes = [
  {
    path: '/',
    name: 'WelcomeView',
    component: WelcomeView
  },
  {
    path: '/chatroom',
    name: 'ChatRoom',
    component: ChatRoom
  }
]


const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router