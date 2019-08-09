<template>
  <div class="details">
   <navtop></navtop> 
    
    <div class="main">
      <details-bread :cname="cname"></details-bread>
      <details-input></details-input>
      <details-select :cid="cid"></details-select>
      <details-image :cid="cid" :cname="cname"></details-image>
      <!-- <details-page></details-page> -->
      <div class="foot">
        <img src="../../public/img/details_list_foot_2.jpg" alt="">
      </div>
    </div>
    <hflooter></hflooter>
  </div>
</template>
<script>
// 引入子组件
// 引入商品列表组件
import Details_image from '../components/Details_image.vue';
// 引入分页条组件
import Details_page from '../components/Details_page.vue';
// 引入商品网页底部组件

// 引入面包屑导航组件
import Details_bread from '../components/Details_bread.vue';
// 引入选择框的组件
import Details_select from '../components/Details_select.vue';
// 引入输入框的组件
import Details_input from '../components/Details_input.vue';
import Hflooter from "../components/Hflooter"
import navtop from "../components/navtop"


export default {
  
  data(){
    return{
      cid:sessionStorage.getItem("cid"),
      cname:sessionStorage.getItem("cname")
    }
  },
  components:{
    "details-image":Details_image,
    "details-page":Details_page,

    "details-bread":Details_bread,
    "details-select":Details_select,
    "details-input":Details_input,
    "navtop":navtop,
    "hflooter":Hflooter,
  }, 
}
</script>
<style scoped>
.details .top{
  display:flex;
  justify-content: space-between;
  background-color:rgba(0,0,0,0.6);
  text-align: center;
  height:60px;
  position:relative;
}
.details .top .top-1{
  line-height:60px;
  position:absolute;
  top:5px;
  left:400px;
}
.details .top .top-2{
  line-height: 60px;
  position:absolute;
  top:0px;
  left:500px;
}
.details .top .top-3{
  line-height:60px;
  position:absolute;
  top:0px;
  right:450px;
}
.el-button--text{
  color:#fff;
}
.el-button{
  font-size:19px;
  font-weight: 500;
  padding:0;
}
.el-button--text:hover{
  border-bottom-width: 8px;
  border-bottom-color: orange;
  color:orange;
}
.el-breadcrumb__inner.is-link{
  font-weight: 0;
}
.el-button+.el-button {
  margin-left:50px;
}
.el-breadcrumb{
  font-size:16px;
}
.details .main{
  width:1190px;
  margin:0 auto;
}
.main{
  padding-top: 80px;
}

</style>


