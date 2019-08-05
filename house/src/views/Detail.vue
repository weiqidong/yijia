<template>
  <div class="bgs">
    <navtop></navtop> 
    <div>
      <div class="bread" :style="{background:'url(http://127.0.0.1:3000/'+lista[0].hic +')'}">
        <el-breadcrumb separator-class="el-icon-arrow-right">
        <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
        <el-breadcrumb-item>{{cname}}</el-breadcrumb-item>
        <el-breadcrumb-item>{{lista[0].hname}}</el-breadcrumb-item>
      </el-breadcrumb>
      </div>     
    </div>
    <div class="tabs">
      <el-tabs v-model="activeName" >
        <el-tab-pane label="房屋介绍" name="second"><agent></agent></el-tab-pane>
        <el-tab-pane label="入住须知" name="first"><deal></deal></el-tab-pane>
        <el-tab-pane label="交易规则" name="third"><moveto></moveto></el-tab-pane>
        <el-tab-pane label="额外费用" name="fourth"><surcharge></surcharge></el-tab-pane>
        <el-tab-pane label="房屋点评" ><comment></comment></el-tab-pane>
      </el-tabs>
    </div>
    <div class="detas">
      <div>
        <span>¥</span><span class="span">{{lista[0].price}}</span><span>每晚</span>
      </div>
      <div>
        <el-date-picker
      v-model="value7"
      type="daterange"
      align="right"
      unlink-panels
      range-separator="至"
      start-placeholder="开始日期"
      end-placeholder="结束日期"
      :picker-options="pickerOptions2">
    </el-date-picker>
      </div> 
      <div>
        <el-button class="nva" type="primary" @click="onre">立即订购{{days}}晚¥{{days*lista[0].price}}</el-button>
      </div> 
    </div>
    <hflooter></hflooter>
  </div>
</template>
<script>
import Agent from '../components/Agent'
import Deal from '../components/deal'
import Moveto from '../components/Moveto'
import Surcharge from '../components/Surcharge'
import Comment from '../components/Comment'
import Hflooter from "../components/Hflooter"
import navtop from "../components/navtop"
export default {
  data(){
    return{
      days: '',
      lista:[],
      activeName: 'second',
       pickerOptions2: {
          shortcuts: [{
            text: '最近一周',
            onClick(picker) {
              const end = new Date();
              const start = new Date();
              start.setTime(start.getTime() - 3600 * 1000 * 24 * 7);
              picker.$emit('pick', [start, end]);
            }
          }, {
            text: '最近一个月',
            onClick(picker) {
              const end = new Date();
              const start = new Date();
              start.setTime(start.getTime() - 3600 * 1000 * 24 * 30);
              picker.$emit('pick', [start, end]);
            }
          }, {
            text: '最近三个月',
            onClick(picker) {
              const end = new Date();
              const start = new Date();
              start.setTime(start.getTime() - 3600 * 1000 * 24 * 90);
              picker.$emit('pick', [start, end]);
            }
          }]
        },
        value7:[new Date(sessionStorage.getItem("value3")),new Date(sessionStorage.getItem("value7"))],
        lists:[],
        hid:sessionStorage.getItem("hid"),
      cname:sessionStorage.getItem("cname")
    }
  },
  methods: {
      onre(){
        sessionStorage.setItem("hid",this.hid)
        this.$router.push("/booking");
      }
  },
  mounted(){
    one:{
      this.days=(this.value7[1]-this.value7[0])/1000/3600/24;
      var obj={hid:this.hid}
      this.axios.get("/del",{params:obj}).then(res=>{
        this.lista=res.data.data
      })
    }
  },
  watch: {
    value7:function(){
      this.days=(this.value7[1]-this.value7[0])/1000/3600/24;
    }
  },
  components:{
    "agent":Agent,
    "deal":Deal,
    "moveto":Moveto,
    "surcharge":Surcharge,
    "comment":Comment,
    "navtop":navtop,
    "hflooter":Hflooter,
  }
}
</script>
<style scoped>
 .bgs{
  background-color: #fff
 }
img{
  width: 100%;
}
 .bread{
   padding-top: 100px;
   padding-left: 10%;
   height: 500px ;
 }
 .tabs{
   width: 60%;
   display: inline-block;
  background-color: #fff; 
  margin-left: 5%; 
 }
 .detas{
   margin-top: 100px;
   margin-right: 50px;
   width: 30%;
   height: 300px;
   float: right;
   background-color: #fff;
   border: 1px solid #ccc;
 }
span{
  margin-left: 10px;
}
 .span{
   font-size: 30px;
 }
 .detas>div{
   margin-top: 30px;
   margin-left: 15px;
 }
 .nva{
   width:350px;
   text-align: center;
   font-size: 20px;
 }
</style>