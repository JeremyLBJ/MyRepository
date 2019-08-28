new Vue({
    el:"#app",
    data:{
        userList:[]
    },
    methods:{
    	findAllUserList:function () {
            var _this = this;
            axios.get("/findAllUserList")
                .then(function (response) {
                    _this.userList = response.data;
                })
                .catch(function (reason) {
                    console.log(reason);
                })
        }
    },
    created:function () {
        this.findAllUserList();
    }
})