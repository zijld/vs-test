import { createRouter, createWebHistory } from 'vue-router'
import Home from '../pages/Home.vue'
import Peoples from '../pages/Peoples.vue'
import People from '../pages/People.vue'

const routes = [
    {
        path: '/',
        name: 'home',
        component: Home
    },
    {
        path: '/peoples',
        name: 'peoples',
        component: Peoples
    },
    {
        path: '/people/:id',
        name: 'people',
        component: People,
        props: true
    }
];

export default createRouter({
    history: createWebHistory(),
    routes
})
