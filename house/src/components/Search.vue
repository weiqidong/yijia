<template>
  <div class="search">
    <ul class="search-ul">
      <li class="lis"><el-autocomplete
      class="inline-input"
      v-model="state1"
      :fetch-suggestions="querySearch"
      placeholder="请输入内容"
      @focus="handleSelect"
    ></el-autocomplete></li>
      <li class="lis"><el-date-picker
      v-model="value7"
      type="daterange"
      align="right"
      unlink-panels
      range-separator="至"
      start-placeholder="开始日期"
      end-placeholder="结束日期"
      :picker-options="pickerOptions2">
    </el-date-picker></li>
      <li class="lis"><el-select v-model="select" slot="prepend" placeholder="请选择">
      <el-option label="不限" value="1"></el-option>  
      <el-option label="1人" value="2"></el-option>
      <el-option label="2人" value="3"></el-option>
      <el-option label="3人" value="4"></el-option>
      <el-option label="4人" value="5"></el-option>
      <el-option label="5人" value="6"></el-option>
      <el-option label="6人" value="7"></el-option>
      <el-option label="7人" value="8"></el-option>
      <el-option label="8人" value="9"></el-option>
      <el-option label="9人" value="10"></el-option>
      <el-option label="10人+" value="11"></el-option>
    </el-select></li>
      <li class="lis"><el-button type="warning" @click="search">搜索</el-button></li>
    </ul>
  </div>
</template>
<script>
export default {
  data(){
    return{
      restaurants: [],
      select: '',
       state1: '',
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
        value7: '' ,
        citys:[]   
    }
  },
  methods:{
     querySearch(queryString, cb) {
        var restaurants = this.restaurants;
        var results = queryString ? restaurants.filter(this.createFilter(queryString)) : restaurants;
        // 调用 callback 返回建议列表的数据
        cb(results);
      },
    search(){
      var cname=this.state1;
      var obj={cname:cname}
      console.log((this.value7[1]-this.value7[0])/1000/3600/24)
      this.axios.get("/abs",{params:obj}).then(res=>{
        var cid=res.data.data[0].cid;
        console.log(cid)
        console.log(cname)
        sessionStorage.setItem("cid",cid);
        sessionStorage.setItem("cname",cname)
       this.$router.push("/details")
      })
    },
    handleSelect(item) {
       this.axios.get('/city').then(res=>{
         citys=res.data.data
       })
      },
     loadAll() {
        return [
          {"value":item}
        ];
        
      },
  },
  mounted() {
      this.restaurants = this.loadAll();
    }
}
</script>
<style scoped>
.search{
  z-index: 1000;
  display: flex;
  position: absolute;
  margin-left: 25%;
  margin-top: 250px;
  width:920px;
<<<<<<< HEAD
=======
  background-color:#b1c7d6;
>>>>>>> 1fa57b2dd01ddb81244f751c5d4b97056c359627
}
.lis{
  list-style: none;
  float: left;
}
a{
  display: block;
  width: 60px;
  height: 38px;
  background-color: #3385ff;
  
}
</style>
