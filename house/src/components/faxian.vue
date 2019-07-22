<template>
<div>
    <navgs></navgs>
    <div class="faxian">
        <div class="nav">
            <img src="faxian/remen.jpg" alt="">
            <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect">
                <el-menu-item index="1">北京</el-menu-item>
                <el-menu-item index="2">上海</el-menu-item>
                <el-menu-item index="3">广州</el-menu-item>
                <el-menu-item index="4">深圳</el-menu-item>
                <el-menu-item index="5">成都</el-menu-item>
                <el-menu-item index="6">西安</el-menu-item>
                <el-menu-item index="7">杭州</el-menu-item>
                <el-menu-item index="8"><a href="https://www.ele.me" target="_blank">更多</a></el-menu-item>
            </el-menu>
        </div>
        <div class="city">
            <h1>北京</h1>
            <!-- <p>北京表面上它是现代大都会，但是内心却有抹不去的古朴和怀旧。</p>
            <p>闲庭信步在逐渐少去的胡同里，走进那热气腾腾的涮肉店，那才是真正的北京。</p> -->
            <div class="container-bj">
                <div class="item item-1">
                    <div class="item-bj">
                        <h4>自由空间-古北水镇地中海叠拼别墅</h4>
                        <p>房间在古北水镇景区200米范围内，走路5分钟即可到达古北水镇景区门口。小区私密性好，安保健全。房间为Loft户型，楼下为休闲空间，楼上两个卧室，主卧带独立卫生间，公寓配套私人花园。私密性极好。专业设计师设计，地中海风情，装修精美。<a href="#">详情</a></p>
                    </div>
                    
                </div>
                <div class="item item-2 dh">
                     <img src="faxian/a5.jpg" alt="">
                    <div class="mask">
                        <img class="xin" src="faxian/xin.svg" alt="">
                    <h3>¥ 2599.00</h3>
                    </div>
                </div>
                <div class="item item-3 dh">
                    <img src="faxian/a2.jpg" alt="">
                    <div class="mask">
                        <img class="xin" src="faxian/xin.svg" alt="">
                    <h3>¥ 1999.00</h3>
                    </div>
                </div>
                <div class="item item-4">
                    <div class="item-bj">
                        <h4>自由空间-古北水镇地中海叠拼别墅</h4>
                        <p>房间在古北水镇景区200米范围内，走路5分钟即可到达古北水镇景区门口。小区私密性好，安保健全。房间为Loft户型，楼下为休闲空间，楼上两个卧室，主卧带独立卫生间，公寓配套私人花园。私密性极好。专业设计师设计，地中海风情，装修精美。<a href="#">详情</a></p>
                    </div>
                    
                </div>
            </div>
            <el-button class="btn-bj" type="info" plain>更多美房</el-button>
        </div>
        <div class="city">
            <h1>上海</h1>
            <!-- <p>摩天大楼、石库门、老洋房在这座摩登之都中交融与辉映，演绎着过去与未来的华丽篇章。大陆第一家迪士尼和惊险刺激的欢乐谷是你尽情享乐的好地方。</p>
            <p>大陆第一家迪士尼和惊险刺激的欢乐谷是你尽情享乐的好地方。 -->
             <div class="container-sh">
                <div class="item item-1 ">
                 <div class="cantainer-img sh">
                     <div class="item item-1 ">
                         <div class="item-sh">
                            <h4>【素居】浦东万达/免费接送乐园/机场班车</h4>
                            <p>公寓位于浦东新区周浦镇年家浜路与沪南公路交汇处，万达广场楼上，驾车十几分钟可到迪士尼乐园，位置优越、繁华，交通便利。<a href="#">详情</a></p>
                         </div>
                     </div>
                     <div class="item item-2 dh">
                         <img src="faxian/n.jpg" alt="">
                         <div class="mask-sh">
                            <img class="xin" src="faxian/xin.svg" alt="">
                            <h3>¥ 2599.00</h3>
                        </div>                       
                     </div>
                 </div>
                </div>
                <div class="item item-2 ">
                    <div class="cantainer-img sh">
                        <div class="item item-1">
                            <div class="item-sh">
                                <h4>又见.归宿-201小暑 接送DSN含早餐</h4>
                            <p>房东是室内设计师，整栋房子都是自己设计施工完成的，每一个细节都非常考究，独具匠心。<a href="#">详情</a></p>
                            </div>
                            
                        </div>
                        <div class="item item-2 dh">
                            <img src="faxian/w.jpg" alt="">
                             <div class="mask-sh">
                                <img class="xin" src="faxian/xin.svg" alt="">
                                <h3>¥ 2599.00</h3>
                            </div>          
                        </div>
                    </div>
                </div>
                <el-button class="btn-sh" type="info" plain>更多美房</el-button>
            </div>
        </div>
        <div class="city">
            <h1>广州</h1>
            <!-- <p>每条街道都灯火辉煌，处处充满着令人迷醉的魅力。沙面建筑群中精美的欧洲古典建筑，</p>
            <p>具有岭南韵味的商业骑楼，夜晚珠江沿岸的绚烂夜色，都会让你深深的爱上这座四季如春的南方都市。</p> -->
            <div class="container-gz">
                <div class="item item-1 dh">
                    <img src="faxian/a1.jpg" alt="">
                    <div class="mask-gz">
                            <img class="xin" src="faxian/xin.svg" alt="">
                            <h3>¥ 2599.00</h3>
                        </div>   
                </div>
                <div class="item item-2">
                    <div class="item-gz">
                        <p>1分钟乘地铁/毗邻太古汇/万菱汇<a href="#">详情</a></p>
                    </div>
                </div>
                <div class="item item-3 dh">
                    <img src="faxian/a3.jpg" alt="">
                    <div class="mask-gz">
                            <img class="xin" src="faxian/xin.svg" alt="">
                            <h3>¥ 2599.00</h3>
                        </div>   
                </div>
                <div class="item item-4">
                    <div class="item-gz">
                        <p>1分钟乘地铁/毗邻太古汇/万菱汇<a href="#">详情</a></p>
                    </div>
                </div>
                <div class="item item-5">
                    <div class="item-gz">
                        <p>1分钟乘地铁/毗邻太古汇/万菱汇<a href="#">详情</a></p>
                    </div>
                </div>
                <div class="item item-6 dh">
                    <img src="faxian/a4.jpg" alt="">
                    <div class="mask-gz">
                            <img class="xin" src="faxian/xin.svg" alt="">
                            <h3>¥ 2599.00</h3>
                        </div>   
                </div>
                <div class="item item-7">
                    <div class="item-gz">
                        <p>1分钟乘地铁/毗邻太古汇/万菱汇<a href="#">详情</a></p>
                    </div>
                </div>
                <div class="item item-8 dh">
                    <img src="faxian/a8.jpg" alt="">
                    <div class="mask-gz">
                            <img class="xin" src="faxian/xin.svg" alt="">
                            <h3>¥ 2599.00</h3>
                        </div>   
                </div>
                <el-button class="btn-gz" type="info" plain>更多美房</el-button>
            </div>
        </div>
    </div>
    <div>
         <Hflooter></Hflooter>
    </div>
   
</div>
    
</template>
<script>
import navgs from '../components/navgs.vue'
import Hflooter from '../components/Hflooter.vue'
export default {
     name:"faxian",
    data(){
        return{
             activeIndex: '1',
             activeIndex2: '1'
        }
    },
    components:{
        "navgs":navgs,
        "Hflooter":Hflooter,
    },
  methods: {
       handleSelect(key, keyPath) {
       console.log(key, keyPath);
      }
     }
}
</script>
<style>
.faxian{
  padding-top: 80px;
  padding-bottom: 50px;
}
.container-gz .dh{
    position: relative;
    overflow: hidden;
}
.mask-gz{
    position: absolute;
    top: 0;
    left: 0;
    width: 275px;
    height: 184px;
    background: rgba(0, 0, 0, 0.3); 
    color: #ffffff;
    display: none;
}
.container-gz .dh:hover .mask-gz{
    display: block;
    color: #fff;
    animation: mymovesh 0.5s 1; 
}
@keyframes mymovesh{
    from{left:-265px;}
    to{left:0px;}
}

.container-sh .dh{
    position: relative;
    overflow: hidden;
    }
.mask-sh{
    position: absolute;
    top: 0;
    left: 0;
    width: 265px;
    height: 250px;
    background: rgba(0, 0, 0, 0.3); 
    color: #ffffff;
    display: none;
}
.container-sh .dh:hover .mask-sh{
    display: block;
    color: #fff;
    animation: mymovesh 0.5s 1; 
}
@keyframes mymovesh{
    from{left:-265px;}
    to{left:0px;}
}

.xin{
    margin-top: 5px;
    width: 50px !important;
    height: 50px !important;
}
.container-bj .dh{
    position: relative;
    overflow: hidden;
}
.mask {
    position: absolute;
    top: 0;
    left: 0;
    width: 550px;
    height: 330px;
    background: rgba(0, 0, 0, 0.3); 
    color: #ffffff;
    display: none;
}
 h3 {
    text-align: center;
    font-size: 25px;
    margin: 0;
}
.container-bj .dh:hover .mask{
    display: block;
    color: #fff;
    animation: mymove 0.5s 1; 
}
@keyframes mymove{
    from{left:-550px;}
    to{left:0px;}
}


    .item-gz{width: 175px;}
  .sh{
        align-items: center;
        justify-items: center;
    }
    .item-sh{
        width: 225px;
    }
    .item-bj{
        width: 390px;
    }
    .city p{
        margin: 0px;
        line-height: 25px;
        text-align: center;
        }
    .city h4{ margin:5px; }
    h1{
        margin-bottom: 30px;
        text-align: center;
    }
    .container-gz{
        position: relative;
    }
    .btn-gz{
        position: absolute !important;
        margin-top: 402px !important;
        margin-left: 1001px !important;
    }
    .container-sh{
        position: relative;
    }
    .btn-sh{
        position: absolute !important;
        margin-top: 285px !important; 
        margin-left: 1094px !important;
    }
    h1{margin-top: 40px;}
 .btn-bj{
        position: absolute !important;
        margin-top: -40px !important;   
        margin-left: 453px !important;
    } 
    .container-gz{
        display: grid;
        grid-template-columns: 275px 275px 275px 275px;
        grid-template-rows: 184px 184px;   
        justify-content: center;
        align-items: center;
        justify-items: center;
    }
    .cantainer-img{
        display: grid;
        grid-template-columns: 265px 265px;
        grid-template-rows: 250px;   
        justify-content: center;
    }
    .container-sh{
        display: grid;
        grid-template-columns: 530px 530px;
        grid-template-rows: 250px;   
        grid-column-gap: 20px;
        justify-content: center;
        align-items: center;
    }
    .faxian{
        width: 1300px;
        margin: 0 auto;
    }
    .el-menu-demo{
        width:1300px !important;
        text-align: center !important;
        margin-left: 10px !important;
    }
    .el-menu-item {
        font-size: 20px !important;
        margin-left: 70px !important;
        color: #000 !important;
   }
   .el-menu-item:hover{
       color:#fb6720 !important;
       border-bottom-color:#fb6720 !important;
   } 
   .el-menu-item:focus{
       color:#fb6720 !important;
       border-bottom-color:#fb6720 !important;
   } 
   .container-bj{
        display: grid;
        grid-template-columns: 550px 550px;
        grid-template-rows: 330px 330px;
        justify-content: center;
        align-items: center;
        justify-items: center;
        position: relative;
    }
    .item-bj{
        justify-items: center ;
        align-items:  center ;
    }
    .item {
        text-align: center;
        /* border: 1px solid #e5e4e9; */
    }
    .container-bj img{
        width: 550px;
        height: 330px;
        
    }
    .container-bj .item-2{
        position: relative;
        overflow: hidden;
        width: 550px;
        height: 330px;
    }
    .item item-1{
        justify-items: center;
        align-items: center;
    }
</style>
