import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import Movietop from "./components/cinema/comm/Movietop.vue"
import Home from "./components/Home.vue"
import TabBarIcon from "./components/cinema/TabBarIcon.vue"
import Moviemess from "./components/cinema/comm/Moviemess.vue"
import Moviemessl from "./components/cinema/comm/Moviemessl.vue"
import Moviemesslist from "./components/cinema/comm/Moviemesslist.vue"
import Moviemesslistl from "./components/cinema/comm/Moviemesslistl.vue"
import Movideotop from "./components/cinema/movideo/Movideotop.vue"
import Movideofoot from "./components/cinema/movideo/Movideofoot.vue"
import Movideonav from "./components/cinema/movideo/Movideonav.vue"
import Mogoumailiea from "./components/cinema/mogoumai/Mogoumailiea.vue"
import Mogoumainav from "./components/cinema/mogoumai/Mogoumainav.vue"
//登录
 import Login from "./components/cinema/login/Login.vue"
 import Logined from "./components/cinema/login/Logined.vue"
import Me from "./components/cinema/login/Me.vue"
//lyc
import Index from "./components/tpp/Index"
import Citychose from "./components/tpp/Citychose"
import Filmseatselect from "./components/tpp/Filmseatselect"



Vue.use(Router)

export default new Router({
    routes: [
        { path: '/', component: HelloContainer },      
         { path: '/Movietop', component: Movietop },
         { path: '/Home', component: Home },
         { path: '/TabBarIcon', component: TabBarIcon },
         { path: '/Moviemess', component: Moviemess },
         { path: '/Moviemessl', component: Moviemessl },
         { path: '/Moviemesslist', component: Moviemesslist },
         { path: '/Moviemesslistl', component: Moviemesslistl },
         { path: '/Movideotop', component: Movideotop },
         { path: '/Movideofoot', component: Movideofoot },
         { path: '/Movideonav', component: Movideonav },
         { path: '/Mogoumailiea', component: Mogoumailiea },
         { path: '/Mogoumainav', component: Mogoumainav },
//登录
          { path: '/Login', component: Login },
          { path: '/Logined', component: Logined},
          { path: '/Me', component: Me},
        {path:'/Index',component:Index},
    {path:'/Citychose',component:Citychose},
    {path:'/Filmseatselect',component:Filmseatselect},
    
         
    ]
})