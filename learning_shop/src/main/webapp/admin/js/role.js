new Vue({
    el:"#app",
    data:{
        roleList:[]
    },
    methods:{
    	findAllRoleList:function () {
            var _this = this;
            axios.get("/findAllRoleList")
                .then(function (response) {
                    _this.roleList = response.data;
                })
                .catch(function (reason) {
                    console.log(reason);
                })
        }
    },
    created:function () {
        this.findAllRoleList();
    }
})