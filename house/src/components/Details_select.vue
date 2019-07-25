<template>
  <div class="details-top">
    <div class="details-select">
      <div class="details-select-wz">
        位置
        <el-dropdown class="select-wz">
          <span class="el-dropdown-link">
            热门推荐<i class="el-icon-arrow-down el-icon--right"></i>
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item icon="el-icon-circle-check-outline">外滩</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">徐家汇</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">人民广场</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">东方明珠</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">人民公园</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
        <el-dropdown class="select-wz">
          <span class="el-dropdown-link">
            行政区<i class="el-icon-arrow-down el-icon--right"></i>
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item icon="el-icon-circle-check-outline">浦东新区</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">徐汇区</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">松江区</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">黄浦区</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">静安区</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
        <el-dropdown class="select-wz">
          <span class="el-dropdown-link">
            商圈<i class="el-icon-arrow-down el-icon--right"></i>
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item icon="el-icon-circle-check-outline">金山枫泾古镇</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">虹口足球场</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">迪士尼</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">长寿路</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">虹桥</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
        <el-dropdown class="select-wz">
          <span class="el-dropdown-link">
            观光景点<i class="el-icon-arrow-down el-icon--right"></i>
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item icon="el-icon-circle-check-outline">上海科技馆</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">上海动物园</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">上海欢乐谷</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">上海博物馆</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">上海海洋水族馆</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
        <el-dropdown class="select-wz">
          <span class="el-dropdown-link">
            地铁线路<i class="el-icon-arrow-down el-icon--right"></i>
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item icon="el-icon-circle-check-outline">1号线</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">2号线</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">3号线</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">4号线</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">5号线</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
        <el-dropdown class="select-wz">
          <span class="el-dropdown-link">
            机场/车站<i class="el-icon-arrow-down el-icon--right"></i>
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item icon="el-icon-circle-check-outline">上海浦东国际机场</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">上海虹桥国际机场</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">虹桥火车站</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">上海火车站</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">上海长途客运站</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
        <el-dropdown class="select-wz">
          <span class="el-dropdown-link">
            高校<i class="el-icon-arrow-down el-icon--right"></i>
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item icon="el-icon-circle-check-outline">上海政法大学</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">东华大学</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">复旦大学</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">同济大学</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">上海交通大学</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
        <el-dropdown class="select-wz">
          <span class="el-dropdown-link">
            医院<i class="el-icon-arrow-down el-icon--right"></i>
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item icon="el-icon-circle-check-outline">长海医院</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">大华医院</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">浦东医院</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">同仁医院</el-dropdown-item>
            <el-dropdown-item icon="el-icon-circle-check-outline">新华医院</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
      </div>
      <div class="details-select-fw">
        <div class="select-fw">房屋级别</div>
        <el-checkbox-group v-model="List">
          <el-checkbox label="豪华" @click="select"></el-checkbox>
          <el-checkbox label="高档"></el-checkbox>
          <el-checkbox label="舒适"></el-checkbox>
        </el-checkbox-group>
      </div>
      <div class="details-select-fw">
        <div class="select-fw">房价</div>
        <el-checkbox-group v-model="checkList">
          <el-checkbox label="¥0-200"></el-checkbox>
          <el-checkbox label="¥200-300"></el-checkbox>
          <el-checkbox label="¥300-400"></el-checkbox>
          <el-checkbox label="¥400-500"></el-checkbox>
          <el-checkbox label="¥500-800"></el-checkbox>
          <el-checkbox label="¥800-1000"></el-checkbox>
        </el-checkbox-group>
      </div>
      <div class="details-select-fw">
        <div class="select-fw">户型</div>
        <el-checkbox-group v-model="checkList">
          <el-checkbox label="一居"></el-checkbox>
          <el-checkbox label="二居"></el-checkbox>
          <el-checkbox label="三居"></el-checkbox>
          <el-checkbox label="四居及以上"></el-checkbox>
        </el-checkbox-group>
      </div>
      <div class="details-select-fw">
        <div class="select-fw">房型</div>
        <el-checkbox-group v-model="checkList">
          <el-checkbox label="公寓"></el-checkbox>
          <el-checkbox label="别墅"></el-checkbox>
          <el-checkbox label="复式"></el-checkbox>
          <el-checkbox label="渔家乐"></el-checkbox>
          <el-checkbox label="农家乐"></el-checkbox>
          <el-checkbox label="木屋"></el-checkbox>
          <el-checkbox label="四合院"></el-checkbox>
          <el-checkbox label="老洋房"></el-checkbox>
        </el-checkbox-group>
      </div>
      <div class="details-select-fw">
        <div class="select-fw">配套</div>
        <el-checkbox-group v-model="checkList">
          <el-checkbox label="无线网络"></el-checkbox>
          <el-checkbox label="全天热水"></el-checkbox>
          <el-checkbox label="电梯"></el-checkbox>
          <el-checkbox label="洗衣机"></el-checkbox>
          <el-checkbox label="电视"></el-checkbox>
          <el-checkbox label="空调"></el-checkbox>
          <el-checkbox label="冰箱"></el-checkbox>
          <el-checkbox label="微波炉"></el-checkbox>
        </el-checkbox-group>
      </div>
      <div class="details-select-fw">
        <div class="select-fw">特色</div>
        <el-checkbox-group v-model="checkList">
          <el-checkbox label="做饭方便"></el-checkbox>
          <el-checkbox label="长租首选"></el-checkbox>
          <el-checkbox label="连住优惠"></el-checkbox>
          <el-checkbox label="宠物同行"></el-checkbox>
          <el-checkbox label="聚会轰趴"></el-checkbox>
          <el-checkbox label="海景房"></el-checkbox>
          <el-checkbox label="湖景房"></el-checkbox>
          <el-checkbox label="江景房"></el-checkbox>
        </el-checkbox-group>
      </div>
      <div class="details-select-fw">
        <div class="select-fw">其它</div>
        <el-checkbox-group v-model="checkList">
          <el-checkbox label="暑期大促"></el-checkbox>
          <el-checkbox label="豪宅"></el-checkbox>
          <el-checkbox label="超赞房东"></el-checkbox>
          <el-checkbox label="超赞新房"></el-checkbox>
          <el-checkbox label="新房优惠"></el-checkbox>
          <el-checkbox label="自营民宿"></el-checkbox>
          <el-checkbox label="独立单间"></el-checkbox>
          <el-checkbox label="艺家优选"></el-checkbox>
        </el-checkbox-group>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return {
      checkList:[],
      List:["豪华"],
      list_rank:[]
    }
  },
  methods: {
    select(){
      var url="/house_rank";
      var obj={};
      this.axios.get(url,{params:obj}).then(result=>{
        this.list_rank=result.data;
        console.log(this.list_rank)
      })
    }
  },
}
</script>
<style scoped>
.details-top{
  width:1190px;
  border:1px solid #ddd;
  background-color:#fff;
  padding-bottom:20px;
  margin:20px 0;
}
.details-select{
  width:1150px;
  margin:0 auto;
  background-color:#fff;
}
.details-select-wz{
  border-bottom:1px solid #ddd;
  padding:10px 0;
}
.select-wz{
  margin:0 20px;
}
.details-select .details-select-fw{
  display:flex;
  padding:10px 0;
  border-bottom:1px solid #ddd;
}
.details-select .details-select-fw .select-fw{
  width:64px;
  margin-right:10px;
}
.el-checkbox{
  width:80px;
  margin-right:40px;
}
 .el-dropdown-link {
    cursor: pointer;
  }
  .el-icon-arrow-down {
    font-size: 12px;
  }
  .demonstration {
    display: block;
    color: #8492a6;
    font-size: 14px;
    margin-bottom: 20px;
  }
</style>


