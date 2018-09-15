﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vue_demo1.aspx.cs" Inherits="vue_demo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>vue demo1</title>
    <style>
        .active{
            color:red;
        }
    </style>
</head>
<body>
    <div id="example" v-bind:class="classObject">
        <h1>Hello World!</h1>
    </div>

    <div id="todo-list-example">
  <form v-on:submit.prevent="addNewTodo">
    <label for="new-todo">Add a todo</label>
    <input
      v-model="newTodoText"
      id="new-todo"
      placeholder="E.g. Feed the cat"
    >
    <button>Add</button>
  </form>
  <ul>
    <li
      is="todo-item"
      v-for="(todo, index) in todos"
      v-bind:key="todo.id"
      v-bind:title="todo.title"
      v-on:remove="todos.splice(index, 1)"
    ></li>
  </ul>
</div>

    <script src="javascript/jquery.min.js"></script>
    <script src="javascript/vue/vue.min.js"></script>

    <script>
        var vm = new Vue({
        el: '#example',
        data: {
           classObject: {
           active: true,
          'text-danger': false
              }
        }
        })


        Vue.component('todo-item', {
  template: '\
    <li>\
      {{ title }}\
      <button v-on:click="$emit(\'remove\')">Remove</button>\
    </li>\
  ',
  props: ['title']
})

new Vue({
  el: '#todo-list-example',
  data: {
    newTodoText: '',
    todos: [
      {
        id: 1,
        title: 'Do the dishes',
      },
      {
        id: 2,
        title: 'Take out the trash',
      },
      {
        id: 3,
        title: 'Mow the lawn'
      }
    ],
    nextTodoId: 4
  },
  methods: {
      addNewTodo: function () {
       if (this.newTodoText != '') {
        this.todos.push({
        id: this.nextTodoId++,
        title: this.newTodoText
         })
         this.newTodoText = ''
       }
    }
  }
})

    </script>
</body>
</html>
