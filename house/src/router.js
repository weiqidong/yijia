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
import UserInfo from './components/UserInfo.vue'
import Booking from './views/booking.vue'
Vue.use(Router)

// 全局路由守卫


const router= new Router({
    routes: [{
            path: '/',

            component: index
        }, {
            path: '/UserInfo',

            component: UserInfo,
            meta: {
                needLogin: true, // 需要登录
                 keepAlive: true // 需要被缓存
              }
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
        { path: '/booking', component: Booking }
    ]
})
router.beforeEach((to, from, next) => {
    let isLogin = sessionStorage.getItem("phone"); 
    if (to.meta.needLogin) {  // 判断该路由是否需要登录权限
      if (isLogin) { // 判断是否已经登录
        next()
      }
      else {
        next({
          path: '/login',
          query: {redirect: to.fullPath},  // 将跳转的路由path作为参数，登录成功后跳转到该路由
        })
      }
    }
    else {
      next()
    }
  })
  export default router;