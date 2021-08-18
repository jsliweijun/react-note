---
nav:
  title: 全家桶
  order: 2
group:
  title: 路由
  order: 2
title: react-router
order: 2
---

# [react-router](https://react-router.docschina.org/web/guides/quick-start)

## 前端路由

用于在单页面应用中，进行设置 path 与展示视图的关系。

实现方式原理：

方式一：使用监听浏览器的 hashchange 事件，进行处理判断展示。

方式二：使用 HTML5 提供的 history 对象中的新方法完成。进行对 history 监听和扩展方法。JavaScript如何实现history路由变化监听  React Router核心依赖--history库  

## react-router-dom

react-router 是核心库，在开发 web 应用时是使用 react-router-dom 进行完成，它底层使用了 react-router，并扩展了新的功能，更利于 web 开发。

使用路由时有三类组件：

路由器 router：路由器是确定使用路由的方式和管理路由关系，在 react-router-dom 中有 `<BrowserRouter/> <HashRouter/>`

导航 navigation：可以理解为菜单栏，操作后显示对应的路由组件 `<Link/> <NavLink/>`

路由 route：进行注册路由和路由组件，匹配对应路由后进行显示 `<Switch></Switch> <Route></Route>`

基本使用
开发应用时需要确定使用的路由方式，常用的是 BrowserRouter,HashRouter 

开发时，将 `<App/>` 组件用路由器管理 ,在 react 应用的入口文件中

```js
<BrowserRouter>
  <App/>
</BroserRouter>
```
配置导航和注册路由

```js
<Link to="/about">about</Link>
<Route path="/about" component={About}/>  //About 是路由组件，它能获取相应的路由数据，在 props 中增加了三个对象 history，location，match
```

## 知识点

### 1.普通组件，路由组件


普通组件使用时直接是标签的方式进行，入参 props 中的值只有传入的属性值。props.children 是组件标签内包裹的内容。
路由组件，使用时是放在 `<Route component={Home}>` 上，组件的入参 props 中包含三个对象 history，location，match

### 2. 使用导航组件 `<Link> `与 `<NavLink> `

用于配置导航菜单项，to 属性进行配置点击后打开的路由。

NavLink 增加激活状态会增加 active 类，可以自定义设置使用 activeClassName 。开启路由严格匹配模式 exact ，当开启二级路由时，不能使用。

### 3. 通过 `<NavLink/>` 封装 `<MyNavLink>`

由于导航会配置多个，每个会加相同的属性 className，activeClassName 封装后可以少写。


### 4. 使用路由组件 `<Switch>` 与 `<Route>`

`<Route>` 用于注册路由，path 字段写路由，component 字段写对应展示的组件，exact 严格匹配路由（默认是模糊匹配）。

`<Switch>` 组件解决路由全部匹配的问题，当 `<Route/>` 组件被它包裹时，只能匹配第一个组件。

5. 使用重定向组件 `<Redirect>`

`<Redirect to=””> ` 一般放在多个路由后面。

6. 给路由组件传 params ，search ，state 参数
