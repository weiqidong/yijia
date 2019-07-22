<template>
<div>
    <Search ></Search>
    <div class="carousel">
    <el-carousel indicator-position="outside">
        <el-carousel-item v-for="(item,i) of list" :key="i">
            <img :src="item.i" alt="">
        </el-carousel-item>
    </el-carousel>  
</div>
</div>

</template>
<script>
import  Search from '../components/Search.vue'
export default {
    data(){
        return{
            list:[
                {i:"1.jpg"},
                {i:"2.jpg"},
                {i:"3.jpg"},
                {i:"4.jpg"},
            ]
        }
    },
    components:{
            "Search":Search
        }
}
</script>
<style scoped> 
.carousel{
    z-index: 0 !important;
}
.carousel .el-carousel__item {
    color: #475669;
    font-size: 18px;
    /* opacity: 0.75; */
    line-height: 500px;
    margin: 0;
    width: 1920px !important;
    height: 600px !important;
  }
  .carousel .el-carousel__item img{
      width: 100% !important;
      height: 100% !important;
  }
 .carousel .el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }
  
  .carousel .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  }
 @media (max-width:1400px){
    .carousel .el-carousel{width: 100%;}
 }
 @media (max-width:960px){
    .carousel img{
        width: 100%;
        text-align: center;
        }
 }
 @media (max-width:576px){
     .carousel img{width:100%;}   
 }  
</style>
<style>
body{
    margin:0;
    padding:0;
}
.carousel .el-carousel__container{height:600px !important;}
</style>


