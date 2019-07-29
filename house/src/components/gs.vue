<template>
<div>
    <navgs></navgs> 
     <div class="gs">
        <div>
            <img src="index/gs.jpg" alt="">
        </div>
        <div class="ty">
        <div class="biaoti">
            <img src="index/shu.svg" alt="">
            <h3>民宿之约</h3>
        </div>
        <el-row type="flex" class="row-bg" justify="space-around">
            <el-col :span="6">
                <div class="grid-content bg-purple">
                    <div class="box">
                        <img src="index/meinv.jpg" alt="">
                    </div>
                    <div class="box-font">
                        <h4>成都春舍 成成</h4>
                        <p>她在成都有间精致的复古民宿，过着女孩都梦想过的生活。</p>
                        <el-button type="warning" plain>其它房源</el-button>
                    </div>
                </div>
            </el-col>
            <el-col :span="6">
                <div class="grid-content bg-purple-light">
                    <div class="box">
                        <img src="index/ziwei.jpg" alt="">
                    </div>
                   <div class="box-font">
                        <h4>红尘净土客栈 紫薇</h4>
                        <p>不当潜水员去丽江发呆，她打理的度假风客栈吴彦祖都来住过。</p>
                        <el-button type="warning" plain>其它房源</el-button>
                   </div>
                </div>
            </el-col>
            <el-col :span="6">
                <div class="grid-content bg-purple">
                    <div class="box">
                        <img src="index/laoyangfang.jpg" alt="">
                    </div>
                    <div class="box-font">
                        <h4>上海老洋房的故事</h4>
                        <p>他在武康大楼里，用摩登老洋房穿越旧时光，重回大上海的黄金时代。</p>
                        <el-button type="warning" plain>其它房源</el-button>
                    </div>
                </div>
            </el-col>
        </el-row>
    </div>
   
    <div id="app">
        <el-pagination
        background
        layout="prev, pager, next"
        :total="1000">
        </el-pagination>
    </div>

</div>
<Hflooter></Hflooter>
</div>
    
</template>
<script>
import navgs from "../components/navgs.vue"
import Hflooter from '../components/Hflooter.vue'
export default {
    data(){
        return{
            
        }
    },
    components:
        {
        "navgs":navgs,
        "Hflooter":Hflooter,
            }
}
</script>
<style>
.el-pagination{
    text-align: center !important;
    margin-top: 20px !important;
    margin-bottom: 20px !important;
}
.el-pagination:hover{
    color :#fb6720 !important;
}
.box-fon p{
    margin: 0;
}
.biaoti h3{
    text-align: left;
    display: flex;
    flex-direction: row;
    margin: 0;
    margin-top: 3px;
    margin-left:10px;
}
.biaoti img{
    width: 40px;
    height: 40px;
    display: flex;
    flex-direction: row;
}
.biaoti{
display: flex;
flex-direction: row;
margin-left: 80px;
margin-top:20px;
}
.gs{
    width: 1300px;
    margin: 0 auto;
    padding-top: 80px;
}
.gs p{
    text-align: center;
    font-size: 15px;
}
    .el-carousel__item h3 {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    line-height: 150px;
    margin: 0;
  }
  .el-carousel__item:nth-child(2n) {
     background-color: #99a9bf;
  }
  .el-carousel__item:nth-child(2n+1) {
     background-color: #d3dce6;
  }
  .ty .el-row {
    margin-bottom: 20px;}
    .ty .el-row:last-child {
      margin-bottom: 0;
  }
  .ty .el-col {
    border-radius: 4px;
  }
  .ty .bg-purple-dark {
    background: #fff;
  }
  .ty .bg-purple {
    background: #fff;
  }
  .ty .bg-purple-light {
    background: #fff;
  }
  .ty .grid-content {
    border-radius: 4px;
    min-height: 36px;
  }
  .ty .row-bg {
    padding: 10px 0;
    background-color: #fff;
  }
  .ty .box{
       overflow: hidden; 
       width: 360px;
       height: 260px;
  }
  .ty img:hover{
      /* transform: scale(1.2,1.2); */
      transition: all 2s linear;
      transform:  scale(1.2,1.2);
  }
</style>