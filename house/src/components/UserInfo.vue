    <template>
        <div id="container">
            <div id="center">
                <el-container>
                    <el-aside>
                        <div class="info">
                            <div id="img">
                            </div>
                            <ul>
                                <li><a href="javascript:;">156****5194</a></li>
                                <li><a href="javascript:;">修改个人资料</a></li>
                                <li><a href="javascript:;">钻石卡绑定</a></li>
                            </ul>
                        </div>
                        <el-card class="card">
                            <div slot="header" class="title">
                                <img src="../assets/dingdan.png" alt="">
                                <span>我的订单</span>
                            </div>
                            <ul>
                                <li><a href="javascript:;">订单管理</a></li>
                                <li><a href="javascript:;">点评管理</a></li>
                            </ul>
                        </el-card>
                        <el-card class="card">
                            <div slot="header"  class="title">
                                <img src="../assets/zichanqingkuang.png" alt="">
                                <span>我的资产</span>
                            </div>
                            <ul>
                                <li><a href="javascript:;">账户余额</a></li>
                                <li><a href="javascript:;">收款账号</a></li>
                                <li><a href="javascript:;">我的VIP卡</a></li>
                                <li><a href="javascript:;">我的红包</a></li>
                                <li><a href="javascript:;">我的积分</a></li>
                            </ul>
                        </el-card>
                        <el-card class="card">
                            <div slot="header" class="title">
                                <img src="../assets/gerenyonghutouxiang2.png" alt="">
                                <span>个人中心</span>
                            </div>
                            <ul>
                                <li><a href="javascript:;">个人资料</a></li>
                                <li><a href="javascript:;">修改密码</a></li>
                                <li><a href="javascript:;">我的收藏</a></li>
                                <li><a href="javascript:;">常用入住人</a></li>
                                <li><a href="javascript:;">我的发票</a></li>
                                <li><a href="javascript:;">会员俱乐部</a></li>
                                <li><a href="javascript:;">通知</a></li>
                                <li><a href="javascript:;">消息</a></li>
                            </ul>
                        </el-card>
                    </el-aside>
                    <el-main>
                        <el-card>
                            <div slot="header">
                                <span>资料</span>
                            </div>
                            <div>
                                <div class="inf">
                                <!-- 头像 -->
                                <div id="img1">
                                </div>
                                <!-- 基本信息 -->
                                <ul>
                                    <li>
                                        用户名：<strong>{{uname}}</strong>
                                        <a href="javascript:;">填写</a>
                                    </li>
                                    <li>
                                        邮箱：<strong>{{email}}</strong>
                                        <a href="javascript:;">修改</a>
                                    </li>
                                    <li>
                                        绑定手机：<strong>{{phone}}</strong>
                                    </li>
                                </ul>
                            </div>
                            </div>
                        </el-card>

                        <el-form ref="form" :model="form" label-width="120px">
                            <el-form-item label="真实姓名：">
                                <el-input v-model="form.user_name"></el-input>
                            </el-form-item>
                            <el-form-item label="家乡：">
                                <el-cascader
                                    expand-trigger="hover"
                                    :options="options"
                                    v-model="selectedOptions2"
                                    @click="getaddr"
                                    @change="handleChange">
                                </el-cascader>
                            </el-form-item>
                        </el-form>
                    </el-main>
                </el-container>
            </div>
        </div>
    </template>
    <script>
    export default {
        data(){
            return {
                uname:"未填",
                email:"1139755334@qq.com",
                phone:"15621875194",
                form:{
                    user_name:""
                },
                options: [{
                    value: '北京',
                    label: '北京',
                    children: [{value:'朝阳区',label:'朝阳区'},]
                    }],
                selectedOptions2: []
            }
        },
        methods: {
            handleChange(value) {
                console.log(value);
            },
            getaddr(){
                
            }

        },
    }
    </script>
    <style>
    .el-form .el-cascader .el-input__suffix{
        left:210px;
    }
    .el-form .el-cascader .el-input__inner{
        width:250px;
    }
    .el-form .el-form-item__label{
        font-size: 18px;
        font-weight: bold;
    }
    .el-form{
        margin-top:50px;
        margin-left:50px;
    }
    .el-form .el-input{
        width:30%;
    }
    .inf ul li{
        margin-top:20px;
        font-size: 14px;
    }
    .inf ul li a{
        text-decoration: none;
        margin-left: 10px;
        color:#1e72df
    }
    ul{
        list-style: none;
    }
    .el-main .el-card{
        width:700px;
    }
    .inf{
        display:flex;
    }
    #img1{
        width:150px;
        height:150px;
        border-radius:50%;
        background-image: url("../assets/Q.jpg");
        background-size: cover;
        margin-top:10px;
        margin-right: 0px;
    }
    #center{
        width:1500px;
        margin:0 auto;
    }
    #img{
        width:70px;
        height:70px;
        border-radius:50%;
        background-image: url("../assets/Q.jpg");
        background-size: cover;
        margin-top:10px;
        margin-left: 10px;
    }
    .info{
        display:flex;
        border:2px solid rgb(241, 240, 240); 
        border-top:3px solid rgb(250, 117, 8);
    }
    .info ul li{
        margin-top:5px;
    }
    .info ul li:first-child{
        font-weight: bold;
        font-size: 14px;
    }
    .info ul a{
        text-decoration: none;
        color:rgb(63, 116, 117);
        font-size: 14px;
    }
    .info ul a:hover{
        text-decoration-line: underline;
    }
    .title img{
        width:30px;
        margin-right:10px;
        vertical-align: middle;
    }
    .title span{
        font-size: 18px;
        font-weight: bold;
    }
    .card:not(:first-child) a{
        text-decoration: none;
        font-size: 16px;
        color:#000;
    }

    .card ul{
        list-style: none;
    }
    .card ul li{
        margin-bottom: 12px;
    }
    .card a:hover{
        color:rgb(250, 117, 8);
    }
    .el-card__header{
        background-color:#eee;
        margin:0 !important;
        padding:10px;
    }
    .el-card__body{
        padding:10px;
    }
    </style>