<template>
<div>
  <navtop></navtop> 
  <carousel></carousel>
<div class="index">
    <div class="ms">
        <div>
            <h1>找民宿，住艺家</h1>
        </div>
        <!-- <div class="ms"> -->
        <el-row :gutter="20">
            <el-col :span="6">
                <div class="grid-content bg-purple" @click="gofaxian()">
                    <img src="index/jh.jpg" alt="">
                    <h4>私密空间 亲朋好友尽兴玩</h4>
                </div>
                <el-row >
                    <el-button type="warning" @click="gofaxian()" plain>轰趴聚会</el-button>
                </el-row>
            </el-col>
             <el-col :span="6">
                <div class="grid-content bg-purple " @click="gofaxian()">
                    <img src="index/cy.jpg" alt="">
                    <h4>一房多卧 家人合住好照看</h4>
                </div>
                <el-row>
                    <el-button type="warning" @click="gofaxian()" plain>轰趴聚会</el-button>
                </el-row>
            </el-col>
            <el-col :span="6">
                <div class="grid-content bg-purple" @click="gofaxian()">
                    <img src="index/cz.jpg" alt="">
                    <h4>洗衣做饭 设施齐全又省钱</h4>
                </div>
                <el-row>
                    <el-button type="warning" @click="gofaxian()" plain>轰趴聚会</el-button>
                </el-row>
            </el-col>
            <el-col :span="6">
                <div class="grid-content bg-purple" @click="gofaxian()">
                    <img src="index/ty.jpg" alt="">
                    <h4>房型丰富 风格迥异更养眼</h4>
                </div>
                <el-row>
                    <el-button type="warning" @click="gofaxian()" plain>轰趴聚会</el-button>
                </el-row>
            </el-col> 
        </el-row>
    </div>
    <div>
        <h1>当季热门</h1>
    </div>
    <div class="rm">
        <div class="tp">
            <img src="index/xm.jpg" alt="">
        </div>
        <div class="font">
            <div class="wz">
                <h3>最美厦门</h3>
                <h4>环岛路海浪树荫，闲庭信步，体验厦门的闲暇时光。</h4>
                <p>天地造化无处不在的奇迹，无论是孩子般变化的天气，还是千姿百态的动植物，少数名族的风情万种、数不胜数的美丽风景……这里所有的一切，都会让你对厦门产生了深厚的感情。“ 厦门这座城，吹过的风都是文化，踩的地全是历史”，所以，有时候带着耳机，听着自己喜欢的歌，在古城里走一走，也是对自己的一种“犒赏”，当然你得有个人带你玩，你才会这么惬意！</p>
            </div>
            <div class="btn">
                <el-button  type="warning" plain>本地房源</el-button>
            </div>
        </div>
    </div>
    <div class="rm">
        <div class="font">
            <div class="wz">
                <h3>最美云南</h3>
                <h4>环岛路海浪树荫，闲庭信步，体验厦门的闲暇时光。</h4>
                <p>天地造化无处不在的奇迹，无论是孩子般变化的天气，还是千姿百态的动植物，少数名族的风情万种、数不胜数的美丽风景……这里所有的一切，都会让你对厦门产生了深厚的感情。“ 厦门这座城，吹过的风都是文化，踩的地全是历史”，所以，有时候带着耳机，听着自己喜欢的歌，在古城里走一走，也是对自己的一种“犒赏”，当然你得有个人带你玩，你才会这么惬意！</p>
                <el-button type="warning" plain>本地房源</el-button>
            </div>
        </div>
        <div class="tp">
            <img src="index/yn.jpg" alt="">
        </div>
    </div>
    <div class="bz">
        <div>
            <h1>让安心和信赖悄然发生</h1>
        </div>
        <ul>
        <li>
            <img src="index/dp.svg" alt="">
            <h4>先行赔付</h4>
            <p>千万保障先行赔付</p>
        </li>
        <li>
            <img src="index/24.svg" alt="">
            <h4>先行赔付</h4>
            <p>千万保障先行赔付</p>
        </li>
        <li>
            <img src="index/jb.svg" alt="">
            <h4>信用认证</h4>
            <p>实名认证更放心</p>
        </li>
        <li>
            <img src="index/fw.svg" alt="">
            <h4>房屋保障</h4>
            <p>房客房东高度审核</p>
        </li>
    </ul>
    </div>
    <div id="change">
        <h1>温馨与舒适</h1>
        <div id="bottom">
            <div class="left" @click="add && left()"><img class="img" :src='lefturl'></div>
            <div class="window">
                <ul>
                    <li v-for="(item,i) of list" :key="i" @click="gogs()">
                        <img :src="item.cic" @click="gogs">
                    </li>
                </ul>
            </div>
            <div class="right" @click="add1 && right()"><img class="img" :src='righturl'></div>
        </div>
    </div>
</div>
<Hflooter></Hflooter>
</div>
</template>
<script>
import navtop from '../components/navtop.vue'
import carousel from '../components/carousel.vue'
import Hflooter from '../components/Hflooter.vue'
export default {
    name:"index",
    data(){
        return {
            list:[
                {cic:"lunbo.jpg"},
                {cic:"lunbo1.jpg"},
                {cic:"lunbo2.jpg"},
                {cic:"lunbo3.jpg"},
                {cic:"lunbo4.jpg"},
                {cic:"lunbo5.jpg"},
            ],
            LIWIDTH:580,
            i:0,
            marginRight:30,
            add1:true,
            add:false,
            lefturl:require('../assets/lunbo/lunbozuofangun.png'),
            righturl:require('../assets/lunbo/lunboyoufangun1.png'),
        }
    },
    components:{
        "carousel":carousel,
        "navtop":navtop,
        "Hflooter":Hflooter,
    },
    created(){
        
    },
    methods:{
            gofaxian(){
                this.$router.push("/faxian")
            },
            gogs(){
                this.$router.push("/gs")
            },
               right(){
            this.i++;
            if(this.i==this.list.length-2){
                this.righturl=require('../assets/lunbo/lunboyoufangun.png');
                this.add1=false;
            }
                var ul=document.querySelector(".window ul");
                var n=-1*(this.LIWIDTH+this.marginRight)*this.i;
                ul.style.marginLeft=n+"px";
                this.add=true;
                this.lefturl=require('../assets/lunbo/lunbozuofangun1.png');
            
        },
        left(){
             this.i--;
             if(this.i==0){
                this.lefturl=require('../assets/lunbo/lunbozuofangun.png');
                this.add=false;
             }
                var ul=document.querySelector(".window ul");
                var n=-1*(this.LIWIDTH+this.marginRight)*this.i;
                ul.style.marginLeft=n+"px";
                this.add1=true;
                this.righturl=require('../assets/lunbo/lunboyoufangun1.png');
        }
    }
}
</script>


<style scoped>
#change{
    margin:0 auto;
    width:1250px;
    background:#fff;
}
#change h1{
    margin-bottom: 0px;
}
#change #bottom{
    display: flex;
    flex-direction: row;
    justify-content: space-around;
}
#change #bottom ul{
    list-style: none;
    display:flex;
    justify-content: space-between;
    padding-left:0;
    position:absolute;
    margin-bottom: 20px;
}
#change #bottom ul li{
    margin-right: 30px;
    width: 580px;
    height: 435px;
}
#change #bottom ul li img{
    width:580px;
}
#change .window{
    width:1180px;
    height:480px;
    overflow: hidden;
    position:relative;
}
#change #bottom .img{
    width:50px;
}
 #bottom .left,.right{
    margin-top: 215px;;
}
body{
    margin: 0;
    padding: 0;
    }
 .el-row {
    margin-bottom: 20px;
    }
    .el-row:last-child {
      margin-bottom: 0;
    }
 .el-col {
    border-radius: 4px;
  }
   .bg-purple-dark {
    background: #fff;
  }
  .bg-purple {
    background: #fff;
  }
  .bg-purple-light {
    background: #fff;
  }
  .grid-content {
    border-radius: 4px;
    min-height: 36px;
  }
  .row-bg {
    padding: 10px 0;
    background-color: #f9fafc;
  }
  .ms .grid-content {
      position: relative;
      overflow: hidden;
  }
  .ms button{
      position: absolute;
      bottom: 100px;
      left: 100px;
  }
  .ms .grid-content bg-purple img{
      border-radius: 10px !important;
  }
  .ms img:hover{
      transform: scale(1.1,1.1);
      transition: all 2s linear;
      }
    .bz img{
        width: 100px;
        height: 100px;
        margin: 0 auto;
    }
    .bz h4{
       margin-top:3px;
       margin-bottom: 5px;
        }
    .bz p{
        margin-top: -12px !important;
        }
    .bz li:hover{
        border: 1px solid #ccc;
        box-shadow: 2px 4px 6px #ccc;
    }
    ul{
        display: flex;
        justify-content: space-around;
    }
    li{
        display: flex;
        justify-content: space-around;
        list-style: none;
        flex-direction: column;
        width: 200px;
        height: 220px;
        box-sizing: border-box;
    }
    .rm{
        display: flex;
        justify-content: space-between; 
        flex-direction: row;
    }
    .tp img{
        width: 571px;
        height:347px;
    }
    .tp,.font{
        margin: 20px;
        text-align: center;
    }
    .font{
        display: flex; 
        align-items: center;
        flex-direction: column;
        }
    .wz{
       text-align: left; 
    }
    .font p{line-height: 35px;}
    .btn{
        width: 100%;
        text-align: right;
        }
    .index{
        width: 1300px;
        margin: 0 auto; 
    }
@media (max-width:1400px){
    
}
@media (max-width:960px){
	
}
@media (max-width:576px){
	
} 
h1{
    text-align: center;
}
.bz p{
    text-align: center;
}
.bz h4{
    text-align: center;
}
</style>
