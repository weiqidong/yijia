<template>
  <div class="details_list_container">
    <ul class="list_ul">
      <li class="list_li" v-for="(item,i) of list" :key="i">
        <div class="top-img" @click="loadThree(item.hid,cname)" :data-id="item.hid">
          <a href="javascript:;">
            <img :src="'http://127.0.0.1:3000/'+item.hic" alt="">
          </a>
        </div>
        <div class="house-title">
          <div class="house-name">
            <a class="house-detail-link" href="#">{{item.title}}</a>
          </div>
          <div class="price">
            <a href="#">¥{{item.price}}</a>
          </div>
        </div>
        <div class="house-address">
          <div class="region">
            <a href="#">{{item.addr_detail}}</a>
          </div>
          <div class="map-icon">
            <a class="el-icon-map-location" href="#"></a>
          </div>
        </div>
        <div class="house-detail">
          {{item.h_layout}}/{{item.h_grade}}/{{item.Layout}}
          <a href="#"><span><b>4.9</b>分</span>/172条评论</a>
        </div>
      </li>
      <!--  
      <li class="list_li">
        <div class="top-img">
          <a href="#">
            <img src="../../public/img/details_list_2.jpg" alt="">
          </a>
        </div>
        <div class="house-title">
          <div class="house-name">
            <a class="house-detail-link" href="#">白雪公主豪华大床间免费专车接送</a>
          </div>
          <div class="price">
            <a href="#">¥366.00</a>
          </div>
        </div>
        <div class="house-address">
          <div class="region">
            <a href="#">上海浦东</a>
          </div>
          <div class="map-icon">
            <a class="el-icon-map-location" href="#"></a>
          </div>
        </div>
        <div class="house-detail">
          1居/26平米/宜住2人
          <a href="#"><span><b>4.9</b>分</span>/172条评论</a>
        </div>
      </li>
      <li class="list_li">
        <div class="top-img">
          <a href="#">
            <img src="../../public/img/details_list_3.jpg" alt="">
          </a>
        </div>
        <div class="house-title">
          <div class="house-name">
            <a class="house-detail-link" href="#">白雪公主豪华大床间免费专车接送</a>
          </div>
          <div class="price">
            <a href="#">¥366.00</a>
          </div>
        </div>
        <div class="house-address">
          <div class="region">
            <a href="#">上海浦东</a>
          </div>
          <div class="map-icon">
            <a class="el-icon-map-location" href="#"></a>
          </div>
        </div>
        <div class="house-detail">
          1居/26平米/宜住2人
          <a href="#"><span><b>4.9</b>分</span>/172条评论</a>
        </div>
      </li>
      <li class="list_li">
        <div class="top-img">
          <a href="#">
            <img src="../../public/img/details_list_4.jpg" alt="">
          </a>
        </div>
        <div class="house-title">
          <div class="house-name">
            <a class="house-detail-link" href="#">白雪公主豪华大床间免费专车接送</a>
          </div>
          <div class="price">
            <a href="#">¥366.00</a>
          </div>
        </div>
        <div class="house-address">
          <div class="region">
            <a href="#">上海浦东</a>
          </div>
          <div class="map-icon">
            <a class="el-icon-map-location" href="#"></a>
          </div>
        </div>
        <div class="house-detail">
          1居/26平米/宜住2人
          <a href="#"><span><b>4.9</b>分</span>/172条评论</a>
        </div>
      </li>
      <li class="list_li">
        <div class="top-img">
          <a href="#">
            <img src="../../public/img/details_list_5.jpg" alt="">
          </a>
        </div>
        <div class="house-title">
          <div class="house-name">
            <a class="house-detail-link" href="#">白雪公主豪华大床间免费专车接送</a>
          </div>
          <div class="price">
            <a href="#">¥366.00</a>
          </div>
        </div>
        <div class="house-address">
          <div class="region">
            <a href="#">上海浦东</a>
          </div>
          <div class="map-icon">
            <a class="el-icon-map-location" href="#"></a>
          </div>
        </div>
        <div class="house-detail">
          1居/26平米/宜住2人
          <a href="#"><span><b>4.9</b>分</span>/172条评论</a>
        </div>
      </li>
      <li class="list_li">
        <div class="top-img">
          <a href="#">
            <img src="../../public/img/details_list_6.jpg" alt="">
          </a>
        </div>
        <div class="house-title">
          <div class="house-name">
            <a class="house-detail-link" href="#">白雪公主豪华大床间免费专车接送</a>
          </div>
          <div class="price">
            <a href="#">¥366.00</a>
          </div>
        </div>
        <div class="house-address">
          <div class="region">
            <a href="#">上海浦东</a>
          </div>
          <div class="map-icon">
            <a class="el-icon-map-location" href="#"></a>
          </div>
        </div>
        <div class="house-detail">
          1居/26平米/宜住2人
          <a href="#"><span><b>4.9</b>分</span>/172条评论</a>
        </div>
      </li>
      <li class="list_li">
        <div class="top-img">
          <a href="#">
            <img src="../../public/img/details_list_7.jpg" alt="">
          </a>
        </div>
        <div class="house-title">
          <div class="house-name">
            <a class="house-detail-link" href="#">白雪公主豪华大床间免费专车接送</a>
          </div>
          <div class="price">
            <a href="#">¥366.00</a>
          </div>
        </div>
        <div class="house-address">
          <div class="region">
            <a href="#">上海浦东</a>
          </div>
          <div class="map-icon">
            <a class="el-icon-map-location" href="#"></a>
          </div>
        </div>
        <div class="house-detail">
          1居/26平米/宜住2人
          <a href="#"><span><b>4.9</b>分</span>/172条评论</a>
        </div>
      </li>
      <li class="list_li">
        <div class="top-img">
          <a href="#">
            <img src="../../public/img/details_list_8.jpg" alt="">
          </a>
        </div>
        <div class="house-title">
          <div class="house-name">
            <a class="house-detail-link" href="#">白雪公主豪华大床间免费专车接送</a>
          </div>
          <div class="price">
            <a href="#">¥366.00</a>
          </div>
        </div>
        <div class="house-address">
          <div class="region">
            <a href="#">上海浦东</a>
          </div>
          <div class="map-icon">
            <a class="el-icon-map-location" href="#"></a>
          </div>
        </div>
        <div class="house-detail">
          1居/26平米/宜住2人
          <a href="#"><span><b>4.9</b>分</span>/172条评论</a>
        </div>
      </li>
      <li class="list_li">
        <div class="top-img">
          <a href="#">
            <img src="../../public/img/details_list_9.jpg" alt="">
          </a>
        </div>
        <div class="house-title">
          <div class="house-name">
            <a class="house-detail-link" href="#">白雪公主豪华大床间免费专车接送</a>
          </div>
          <div class="price">
            <a href="#">¥366.00</a>
          </div>
        </div>
        <div class="house-address">
          <div class="region">
            <a href="#">上海浦东</a>
          </div>
          <div class="map-icon">
            <a class="el-icon-map-location" href="#"></a>
          </div>
        </div>
        <div class="house-detail">
          1居/26平米/宜住2人
          <a href="#"><span><b>4.9</b>分</span>/172条评论</a>
        </div>
      </li>-->
    </ul>
    <!-- <button @click="loadMore">下一页</button> -->
    <div class="details_page">
      <div></div>
      <el-pagination
        class="page"
        background
        layout="prev, pager, next"
        :total="100"
        @prev-click="loadSlow"
        @next-click="loadMore">
      </el-pagination>
    </div>
  </div>

</template>
<script>
export default {
  data(){
    return {
      list:[],
      pno:0,
      ps:9
    }
  },
  props:["cid","cname"],

  methods:{
    loadMore(){//加载更多数据
      var url="/product";
      this.pno++;
      var obj={pno:this.pno,pageSize:this.ps,cid:this.cid};
      this.axios.get(url,{params:obj}).then(result=>{
        this.list=result.data.data;
        //var rows=this.list.concat(result.data.data);
        //this.list=rows;
        //console.log(this.list)
      })
    },
    loadSlow(){
      var url="/product";
      this.pno--;
      var obj={pno:this.pno,pageSize:this.ps,cid:this.cid};
      this.axios.get(url,{params:obj}).then(result=>{
        this.list=result.data.data;
      })
    },
    loadThree(e,s){
      //var obj={cname:this.input}
      //this.axios.get("/details",{params:obj}).then(res=>{
       // var hid=res.data.data[0].hid;
        //console.log(hid)
        var hid=e;
        //console.log(e)
        var cname=s;
        sessionStorage.setItem("hid",hid);
        sessionStorage.setItem("cname",cname);
       // console.log(hid);
        this.$router.push("/detail")
    }
  },
  created(){
    this.loadMore();
    }
}
</script>
<style scoped>
*{margin:0;padding:0;}
.details_list_container{
  width:1230px;
}
.details_list_container .list_ul{
  list-style: none;
  display: flex; 
  flex-wrap:wrap;
}
.details_list_container .list_ul .list_li{
  width:370px;
  box-sizing:border-box;
  margin-top:20px;
  margin-right:40px;
}
.details_list_container .list_ul .list_li img{
  width:370px;
  height:232px;
}
.details_list_container .list_ul .list_li a{
  text-decoration: none;
  color:#333;
}
.details_list_container .list_ul .list_li .house-title{
  display:flex;
  justify-content: space-between;
  margin-top:10px;
}
.details_list_container .list_ul .list_li .house-title .house-name{
  font-size:18px;
  font-weight:545;
}
.details_list_container .list_ul .list_li .house-title .price a{
  color:rgba(255,0,0,0.9)
}
.details_list_container .list_ul .list_li .house-address{
  display: flex;
  margin-top:10px;
}
.details_list_container .list_ul .list_li .house-address .region{
  font-size:14px;
}
.details_list_container .list_ul .list_li .house-address .map-icon{
  margin-left:10px;
}
.details_list_container .list_ul .list_li .house-detail{
  font-size:14px;
  margin-top:10px;
}
.details_list_container .list_ul .list_li .house-detail a{
  margin-left:10px;
}
.details_list_container .list_ul .list_li .house-detail span{
  color:rgba(0,100,255,0.8)
}
.details_page{
  width:1190px;
  margin-top:50px;
  margin-bottom:50px;
  display: flex;
  justify-content: space-between;
}
</style>


