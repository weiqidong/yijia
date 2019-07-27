import Vue from 'vue'
import Router from 'vue-router'
import nav from './components/navtop.vue'
import carousel from './components/carousel.vue'
import index from './views/index.vue'
import ty from './components/ty.vue'
import gs from './components/gs.vue'
import rz from './components/rz.vue'
import faxian from './components/faxian.vue'
import navgs from './components/navgs.vue'
import Hflooter from './components/Hflooter.vue'
import Header from './components/Header.vue'
import Page from './components/Page.vue'
import PhonePage from './components/PhonePage.vue'
import reg from './views/reg.vue'
import Login from './views/Login.vue'
import Search from './components/Search.vue'
import Details from './views/Details.vue'
import Detail from './views/Detail.vue'
<<<<<<< HEAD
import UserInfo from './components/UserInfo.vue'
import a from './components/a.vue'
=======
import Details_null from './components/Details_null'
>>>>>>> 1fa57b2dd01ddb81244f751c5d4b97056c359627
Vue.use(Router)

export default new Router({
    routes: [{
            path: '/',

<<<<<<< HEAD
            component: index
        },
        {
            path: '/a',
            name: 'a',
            component: a
        },
        {
            path: '/UserInfo',
            name: 'UserInfo',
            component: UserInfo
        },
        {
            path: '/about',
            name: 'about',
            // route level code-splitting
            // this generates a separate chunk (about.[hash].js) for this route
            // which is lazy-loaded when the route is visited.
            component: () =>
                import ( /* webpackChunkName: "about" */ './views/About.vue')
        }, {
            path: '/nav',
            name: 'nav',
            component: nav
        },
        {
            path: '/carousel',
            name: 'carousel',
            component: carousel
        },

        {
            path: '/ty',
            name: 'ty',
            component: ty
        },
        {
            path: '/gs',
            name: 'gs',
            component: gs
        },
        {
            path: '/rz',
            name: 'rz',
            component: rz
        },
        {
            path: '/faxian',
            name: 'faxian',
            component: faxian
        },
        {
            path: '/navgs',
            name: 'navgs',
            component: navgs
        },

        {
            path: '/Hflooter',
            name: 'Hflooter',
            component: Hflooter
        },
        {
            path: '/Header',
            name: 'Header',
            component: Header
        },
        {
            path: '/Page',
            name: 'Page',
            component: Page
        },
        {
            path: '/PhonePage',
            name: 'PhonePage',
            component: PhonePage
        },
        {
            path: '/reg',
            name: 'reg',
            component: reg
        },
        {
            path: '/Login',
            name: 'Login',
            component: Login
        },
        {
            path: '/Search',
            name: 'Search',
            component: Search
        },
        {
            path: '/details',

            component: Details
        },
        {
            path: '/detail',

            component: Detail
        },
    ]
})
=======
      component: index
    },
    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    }, {
      path: '/nav',
      name: 'nav',
      component: nav
    },
    {
      path: '/carousel',
      name: 'carousel',
      component: carousel
    },
    
    {
      path: '/ty',
      name: 'ty',
      component: ty
    },
    {
      path: '/gs',
      name: 'gs',
      component: gs
    },
    {
      path: '/rz',
      name: 'rz',
      component: rz
    },
    {
      path: '/faxian',
      name: 'faxian',
      component: faxian
    },
    {
      path: '/navgs',
      name: 'navgs',
      component: navgs
    },
    
    {
      path: '/Hflooter',
      name: 'Hflooter',
      component: Hflooter
    },
    {
      path: '/Header',
      name: 'Header',
      component: Header
    },
    {
      path: '/Page',
      name: 'Page',
      component: Page
    },
    {
      path: '/PhonePage',
      name: 'PhonePage',
      component: PhonePage
    },
    {
      path: '/reg',
      name: 'reg',
      component:reg
    },
    {
      path: '/Login',
      name: 'Login',
      component: Login
    },
    {
      path: '/Search',
      name: 'Search',
      component: Search
    },
    {
      path: '/details',
      
      component: Details
  },
  {
    path: '/detail',
    
    component: Detail
},
  {
    path:"/null",
    component:Details_null
  }
  ]
})
>>>>>>> 1fa57b2dd01ddb81244f751c5d4b97056c359627
