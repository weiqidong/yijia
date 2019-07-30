<template>
  <div class="bg">
    <h2>{{listw[0].title}}</h2>
    <p>地址：{{listw[0].addr_detail}}</p>
    <ul class="add">
      <li>
        <img src="../assets/fangwujiaju.png" alt="">
      </li>
      <li>
        <img src="../assets/IOTtubiao_huabanfuben.png" alt="">
      </li>
      <li>
        <img src="../assets/chuang.png" alt="">
      </li>
      <li>
        <img src="../assets/renshu.png" alt="">
      </li>
      <li>
        <img src="../assets/yushi.png" alt="">
      </li>
      <li>
        <img src="../assets/guanjingloutai.png" alt="">
      </li>
    </ul>
    <div class="agen">
      <h4>房屋介绍</h4>
      <p>{{listw[0].detail}}</p>
    </div>
    <div class="serve">
      <h4>设施服务</h4>
      <div>
        <p>基础设施</p>
        <ul>
          <li>
            <img src="../assets/WIFIwofi1.png" alt="">
            <span>{{list[0].infr}}</span>
          </li>
          <li>
            <img src="../assets/kongtiao.png" alt="">
            <span>{{list[1].infr}}</span>
          </li>
          <li>
            <img src="../assets/dianshi.png" alt="">
            <span>{{list[2].infr}}</span>
          </li>
          <li>
            <img src="../assets/xiyiji.png" alt="">
            <span>{{list[3].infr}}</span>
          </li>
          <li>
            <img src="../assets/bingxiang.png" alt="">
            <span>{{list[4].infr}}</span>
          </li>
          <li>
            <img src="../assets/nuanqi.png" alt="">
            <span>{{list[5].infr}}</span>  
          </li>
          <li>
            <img src="../assets/dianreshuihu-copy.png" alt="">
            <span>{{list[6].infr}}</span>
          </li>
          <li>
            <img src="../assets/chuifengji.png" alt="">
            <span>{{list[7].infr}}</span>
          </li>
          <li>
            <img src="../assets/xiyifen.png" alt="">
            <span>{{list[8].infr}}</span>
          </li>
          <li>
            <img src="../assets/liangyijia.png" alt="">
            <span>{{list[9].infr}}</span>
          </li>
          <li>
            <img src="../assets/tuoxie.png" alt="">
            <span>{{list[10].infr}}</span>
          </li>
        </ul>
      </div>
      <div class="agen">
        <p>卫浴设施</p>
        <ul>
          <li>
            <img src="../assets/quantian.png" alt="">
            <span>{{list[0].sani}}</span>
          </li>
          <li>
            <img src="../assets/xiyuyongpin.png" alt="">
            <span>{{list[1].sani}}</span>
          </li>
          <li>
            <img src="../assets/maojin.png" alt="">
            <span>{{list[2].sani}}</span>
          </li>
          <li>
            <img src="../assets/yaju.png" alt="">
            <span>{{list[3].sani}}</span>
          </li>
          <li>
            <img src="../assets/yushi.png" alt="">
            <span>{{list[4].sani}}</span>
          </li>
          <li>
            <img src="../assets/yujin.png" alt="">
            <span>{{list[5].sani}}</span>
          </li>
          <li>
            <img src="../assets/xiangzao.png" alt="">
            <span>{{list[6].sani}}</span>
          </li>
          <li>
            <img src="../assets/weishengzhi1.png" alt="">
            <span>{{list[7].sani}}</span>
          </li>
        </ul>
      </div>
      <div class="agen">
        <p>厨房设施</p>
        <ul>
          <li>
            <img src="../assets/pengrenguoju_1.png" alt="">
            <span>{{list[0].galley}}</span>
          </li>
          <li>
            <img src="../assets/canju.png" alt="">
            <span>{{list[1].galley}}</span>
          </li>
          <li>
            <img src="../assets/diancilu.png" alt="">
            <span>{{list[2].galley}}</span>
          </li>
          <li>
            <img src="../assets/tiaoliao.png" alt="">
            <span>{{list[3].galley}}</span>
          </li>
          <li>
            <img src="../assets/daojucaiban.png" alt="">
            <span>{{list[4].galley}}</span>
          </li>
          <li>
            <img src="../assets/dianfanbao.png" alt="">
            <span>{{list[5].galley}}</span>
          </li>
          <li>
            <img src="../assets/xijiejing.png" alt="">
            <span>{{list[6].galley}}</span>
          </li>
        </ul>
      </div>
      <div class="agen">
        <p>周围500米</p>
        <ul>
          <li>
            <img src="../assets/chaoshi.png" alt="">
            <span>{{list[0].surr}}</span>
          </li>
          <li>
            <img src="../assets/caishichang.png" alt="">
            <span>{{list[1].surr}}</span>
          </li>
          <li>
            <img src="../assets/canting.png" alt="">
            <span>{{list[2].surr}}</span>
          </li>
          <li>
            <img src="../assets/yaodian.png" alt="">
            <span>{{list[3].surr}}</span>
          </li>
          <li>
            <img src="../assets/youyong.png" alt="">
            <span>{{list[4].surr}}</span>
          </li>
          <li>
            <img src="../assets/ertongleyuan.png" alt="">
            <span>{{list[5].surr}}</span>
          </li>
          <li>
            <img src="../assets/tikuanji.png" alt="">
            <span>{{list[6].surr}}</span>
          </li>
        </ul>
      </div>
       <div class="agen">
        <p>特色及其他</p>
        <ul>
          <li>
            <img src="../assets/zhinengmensuo.png" alt="">
            <span>{{list[0].item}}</span>
          </li>
          <li>
            <img src="../assets/icon-test.png" alt="">
            <span>{{list[1].item}}</span>
          </li>
          <li>
            <img src="../assets/menjinxitong.png" alt="">
            <span>{{list[2].item}}</span>
          </li>
          <li>
            <img src="../assets/miehuoqi.png" alt="">
            <span>{{list[3].item}}</span>
          </li>
          <li>
            <img src="../assets/tubiao-ditu-huozaibaojingqi.png" alt="">
            <span>{{list[4].item}}</span>
          </li>
          <li>
            <img src="../assets/dianti.png" alt="">
            <span>{{list[5].item}}</span>
          </li>
          <li>
            <img src="../assets/chuanghu.png" alt="">
            <span>{{list[6].item}}</span>
          </li>
        </ul>
      </div>
    </div>
    <div class="agen">
      <h3>房屋位置</h3>
      <p>地址：{{listw[0].addr_detail}}</p>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      list:[],
      hid:sessionStorage.getItem("hid"),
      listw:[]
    }
  },
  methods: {
    
  },
  mounted(){
     onse:{
     

      var obj={hid:this.hid}
      console.log(obj)
      this.axios.get("/del",{params:obj}).then(res=>{
        this.listw=res.data.data
        
      })
     
    }
    selects:{
      this.axios.get("/regs").then(res=>{
        this.list=res.data.data
      })
    }
  }
}
</script>
<style scoped>
 .bg{
   background-color: #fff;
   margin-left: 35px;
 }
 li{
   list-style:none;
    float: left;  
    width: 150px; 
 }
 .add>li{
   margin-right: 5%;
 }
 .add img{
   width: 30px;
 }
 .agen{
   clear: both;
 }
 .serve img{
   width: 25px;
   padding-right: 10px;
   padding-top: 10px;
 }

</style>