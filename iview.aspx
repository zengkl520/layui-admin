<%@ Page Language="C#" AutoEventWireup="true" CodeFile="iview.aspx.cs" Inherits="iview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css"  href="javascript/vue/iview.css" />
    <link rel="stylesheet" type="text/css" href="css/ionicons/ionicons.min.css"/>
</head>
<body>


<div id="app">
    <Input v-model="value" placeholder="Enter something..." style="width: 300px" />
    <i-button @click="show">Click me!</i-button>
    <Modal v-model="visible" title="Welcome">Welcome to iView</Modal>
    <zeng-kl title="My journey with Vue"></zeng-kl>
</div>
   <%-- <i class="icon ion-ios-add" style="font-size: 32px"></i>--%>


    <script type="text/javascript" src="javascript/vue/vue.min.js"></script>
    <script type="text/javascript" src="javascript/vue/iview.min.js"></script>
    <style>
        .activecolor{
             color: green;
             font-size:32px;
        }

    </style>
<script>

    Vue.component('zeng-kl', {
        data: function() {
            return {
                post: 'iview'
            }
        },
        props: ['title'],
        template: `
     <div>
     <h1>{{title}}</h1>
     <Button type="success" >{{post}}</Button>
     <Icon type="ios-checkmark" size="32" />
     <Icon type="ios-cube-outline" size="32"/>
    <br><br>
    <Button>Default</Button>
    <Button type="primary">Primary</Button>
    <Button type="dashed">Dashed</Button>
    <Button type="text">Text</Button>
    <br><br>
    <Button type="info">Info</Button>
    <Button type="success">Success</Button>
    <Button type="warning">Warning</Button>
    <Button type="error">Error</Button>
     </div>
     `
})

        new Vue({
        el: '#app',
        data: {
            visible: false,
            value:'hello world',
        },
        methods: {
            show: function () {
                this.visible = true;
            }
        }
    })



  </script>
</body>
</html>
