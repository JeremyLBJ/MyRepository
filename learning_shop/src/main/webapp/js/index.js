var vue = new Vue({
    el:"#app",
    data:{
        catList:[]
    },
    methods:{
    	findAllCategory:function () {
            var _this = this;
            axios.get("/index/findAllCategory")
                .then(function (response) {
                    _this.catList = response.data;
                })
                .catch(function (reason) {
                    console.log(reason);
                })
        }
    },
    created:function () {
        this.findAllCategory();
    }
})